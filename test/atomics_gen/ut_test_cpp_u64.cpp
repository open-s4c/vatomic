#include <vsync/atomic.hpp>
#include <iostream>
#include <atomic>
#include <cassert>

void
assert_match(vsync::atomic<vuint64_t> &var, std::atomic<vuint64_t> &mirror)
{
    vuint64_t v_var    = var.load();
    vuint64_t v_mirror = mirror.load();
    if (v_var != v_mirror) {
        std::cerr << "[assert_match] vsync::atomic " << v_var
                  << " =? std::atomic " << v_mirror << std::endl;
    }
    assert(v_var == v_mirror);
}

void
test_init(void)
{
    {
        std::atomic<vuint64_t> mirror;
        vsync::atomic<vuint64_t> var;
        assert_match(var, mirror);
    }
    {
        vuint64_t val = 255;
        std::atomic<vuint64_t> mirror(val);
        vsync::atomic<vuint64_t> var(val);
        assert_match(var, mirror);
    }
}

int
main(void)
{
    test_init();
    return 0;
}
