#!/usr/bin/env python3
"""Replace memcpy_s to follow Hongmeng codestyle rules

Libvsync code can be run in both HM user and kernelspace.
HM codestyle rules require userspace code to use `memcpy_s`
directly. Hiding the function call behind a macro is not allowed.
In kernelspace `memcpy_s` is not defined though, and we are also
not allowed to define it ourselves. Instead, we must check
the memcpy arguments first for validity and then call `memcpy`.
This may also not be hidden behind a macro.

To keep our libvsync code clean and suitable for opensourcing,
we simply always use `memcpy_s` in libvsync and use this script
to postprocess the files to follow the required standard,when
creating the HM distribution.

"""
import unittest
from argparse import ArgumentParser
import sys
import re

# Simple pattern to parse memcpy_s prefix, parameters and postfix.
# This pattern currently does not support any possible function invocations as parameters of the memcpy.
# We also require that the memcpy_s invocation has a terminating `;` at the end of line to detect
# potential wierd usages. We try to allow trailing comments after the `;` though.
MEMCPY_PATTERN = re.compile(
    r'(?P<prefix>.*)memcpy_s\((?P<params>(.*,){3}(.*))\)(?P<postfix>.*;(\s*(//.*|/\*.*\*/))?\s*)\n$')

# #ifdef __KERNEL__
# if (check_memcpy_addr(buf, dst, size, size)) {
# (void)memcpy(dst, buf, size);
# } else {
# ret = -1;
# }
# #else
# ret = memcpy_s(dst, size, buf, size);
# #endif
REPLACEMENT_STRING = '''#ifdef __KERNEL__
{indent}{real_prefix}0;
{indent}if (v_memcpy_s_params_ok({memcpy_s_params})) {{
{indent}    (void) memcpy({m_dest}, {m_src}, {m_size});
{indent}}} else {{
{indent}    {ret_var_name} 1{postfix}
{indent}}}
#else
{indent}{real_prefix}memcpy_s({memcpy_s_params}){postfix}
#endif
'''


def replace_memcpy_line(input_line: str) -> str:
    if "memcpy_s(" not in input_line:
        return input_line
    # ignore potential declarations or definitions
    if "memcpy_s(void" in input_line:
        return input_line
    match = MEMCPY_PATTERN.fullmatch(input_line)
    assert match is not None, f'Error: unsupported memcpy_s usage: {input_line}'

    prefix = match.group("prefix")
    params = match.group("params")
    postfix = match.group("postfix")
    # print(f'prefix: {prefix}, params: {params}, postfix: {postfix}')
    real_prefix = prefix.lstrip()
    ret_var_name = real_prefix.replace("int", "").strip()
    indentation_len = len(prefix) - len(real_prefix)
    indentation = prefix[0:indentation_len]

    memcpy_params = params.split(',')
    assert len(memcpy_params) == 4, f'memcpy_s should have 4 parameters, but had {len(memcpy_params)}'
    # print(f'{memcpy_params}', file=sys.stderr)
    replacement = REPLACEMENT_STRING.format(indent=indentation, memcpy_s_params=params, postfix=postfix,
                                            real_prefix=real_prefix,
                                            ret_var_name=ret_var_name,
                                            m_dest=memcpy_params[0],
                                            m_src=memcpy_params[2],  # source
                                            m_size=memcpy_params[3]  # source size1
                                            )
    # print(replacement, file=sys.stderr)
    return replacement


def main():
    parser = ArgumentParser(description=__doc__)
    parser.add_argument(
        'input_file',
        type=str,
        help="The file to post-process"
    )
    parser.add_argument('-o',
                        '--output_file',
                        type=str,
                        required=False,
                        help="Output file. Defaults to stdout. Output is written only after the input file is closed"
                        )
    args = parser.parse_args()
    new_contents = []
    with open(args.input_file, 'r') as f:
        try:
            for line in f.readlines():
                new_contents.append(replace_memcpy_line(line))
        except Exception as e:
            print(f'Error while processing file {args.input_file}', file=sys.stderr)
            raise e
    print('Finished processing input file', file=sys.stderr)
    if args.output_file is not None:
        with open(args.output_file, 'w') as f:
            f.writelines(new_contents)
    else:
        sys.stdout.writelines(new_contents)


class TestReplacement(unittest.TestCase):
    def test_rb(self):
        src = "  int ret = memcpy_s(user_buf, buff_size, entry_get_data(entry),sz);\n"
        expected = """#ifdef __KERNEL__
  int ret = 0;
  if (v_memcpy_s_params_ok(user_buf, buff_size, entry_get_data(entry),sz)) {
      (void) memcpy(user_buf,  entry_get_data(entry), sz);
  } else {
      ret = 1;
  }
#else
  int ret = memcpy_s(user_buf, buff_size, entry_get_data(entry),sz);
#endif
"""
        repl = replace_memcpy_line(src)
        self.assertEqual(repl, expected)

    def test_sizeof_1(self):
        src = "  int ret = memcpy_s(user_buf, sizeof(user_buf), entry_get_data(entry),sz);\n"
        expected = """#ifdef __KERNEL__
  int ret = 0;
  if (v_memcpy_s_params_ok(user_buf, sizeof(user_buf), entry_get_data(entry),sz)) {
      (void) memcpy(user_buf,  entry_get_data(entry), sz);
  } else {
      ret = 1;
  }
#else
  int ret = memcpy_s(user_buf, sizeof(user_buf), entry_get_data(entry),sz);
#endif
"""
        repl = replace_memcpy_line(src)
        self.assertEqual(repl, expected)

    def test_sizeof_2(self):
        src = "  int ret = memcpy_s(user_buf, sizeof(user_buf), entry_get_data(entry),sizeof(blah));\n"
        expected = """#ifdef __KERNEL__
  int ret = 0;
  if (v_memcpy_s_params_ok(user_buf, sizeof(user_buf), entry_get_data(entry),sizeof(blah))) {
      (void) memcpy(user_buf,  entry_get_data(entry), sizeof(blah));
  } else {
      ret = 1;
  }
#else
  int ret = memcpy_s(user_buf, sizeof(user_buf), entry_get_data(entry),sizeof(blah));
#endif
"""
        repl = replace_memcpy_line(src)
        self.assertEqual(repl, expected)

    def test_trailing_comment(self):
        src = "  int ret = memcpy_s(user_buf, buff_size, entry_get_data(entry),sz);    // I am a comment\n"
        expected = """#ifdef __KERNEL__
  int ret = 0;
  if (v_memcpy_s_params_ok(user_buf, buff_size, entry_get_data(entry),sz)) {
      (void) memcpy(user_buf,  entry_get_data(entry), sz);
  } else {
      ret = 1;    // I am a comment
  }
#else
  int ret = memcpy_s(user_buf, buff_size, entry_get_data(entry),sz);    // I am a comment
#endif
"""
        repl = replace_memcpy_line(src)
        self.assertEqual(repl, expected)


if __name__ == "__main__":
    main()
