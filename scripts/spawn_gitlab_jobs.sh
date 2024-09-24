#!/usr/bin/env bash

# This script is a helper to write a gitlab CI yaml file, which spawns one CI job
# per test active in the current configuration.

set -eu pipefail

PROJECT_ROOT=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )/.." &> /dev/null && pwd )
echo $PROJECT_ROOT

if [[ -z "${BUILD_DIR+x}" ]]; then
    echo "Missing required variable BUILD_DIR"
    exit 1;
fi

if [[ -z "${YAML_DESTINATION+x}" ]]; then
    echo "Missing required variable YAML_DESTINATION"
    exit 1;
fi

if [[ -z "${VSYNCER_CHECK+x}" ]]; then
    echo "Missing required variable VSYNCER_CHECK"
    exit 1;
fi

if [[ -z "${VSYNCER_CHECK_FULL+x}" ]]; then
    echo "Missing required variable VSYNCER_CHECK_FULL"
    exit 1;
fi


if ! command -v bc > /dev/null; then
    echo "bc not found - Please install bc"
    exit 1
fi

if ! command -v jq > /dev/null; then
    echo "jq not found. Please install jq."
    exit 1
fi

write_job_to_yaml() {

    JOB_COUNTER=$((JOB_COUNTER+1))
    # it would be a bit more difficult to get a total job count, so lets just
    # hope this already matches the regex gitlab uses to group jobs.
    JOB_NAME="${BASE_JOB_NAME} ${JOB_COUNTER}/${JOB_COUNTER}"
    # Accepts 1 or more job names as parameters.
    # Implicit named parameters: JOB_NAME
    echo "creating job ${JOB_NAME}"

    {
    echo ""
    echo "${JOB_NAME}:"
    # shellcheck disable=SC2016
    echo '  extends: .base'
    echo "  stage: ${JOB_STAGE}"
    echo '  script:'
    echo "    - mkdir -p build/junit"
    # shellcheck disable=SC2016
    echo '    - cmake -S${CI_PROJECT_DIR} -Bbuild ${PKGTOOLS_FLAGS} -DVSYNCER_CHECK=${VSYNCER_CHECK} -DVSYNCER_CHECK_FULL=${VSYNCER_CHECK_FULL}'
    echo '    - cp vsync-meta/CTestCostData.txt build/Testing/Temporary/CTestCostData.txt'
    # Build a regex of `OR` of all the test names.
    delim=""
    joined_test_regex=""
    for test_name in "$@"; do
      joined_test_regex="${joined_test_regex}${delim}${test_name}"
      delim="|"
    done
    # Run the build fixture seperately, since we do not want it to appear in the junit xml.
    mapfile -t BUILD_FIXTURE < <(ctest --test-dir "${BUILD_DIR}" -R "^(${joined_test_regex})\$" --no-tests=error --show-only=json-v1 | jq -r '.tests | .[] |  .name' | grep -E -v "^(${joined_test_regex})\$")
    delim=""
    build_fixture_regex=""
    for fixture_name in "${BUILD_FIXTURE[@]}"
    do
      build_fixture_regex="${build_fixture_regex}${delim}${fixture_name}"
      delim="|"
    done
    echo "    - echo 'build fixture regex ${build_fixture_regex}'"
    echo "    - echo 'Building the tests ...'"
    echo "    - ctest --test-dir build -R \"^(${build_fixture_regex})\$\" --output-on-failure --no-tests=error"
    echo "    - echo 'Running the test ...'"
    # The test bin is now built, so we can run the test(s), but exclude the build fixture.
    echo "    - ctest --test-dir build -R '^(${joined_test_regex})\$' -FA '.*' --output-on-failure --output-junit junit/${CI_JOB_ID}.xml --no-tests=error"
    # We need to rename the log output in all cases, including if the job failed, hence `after_script`
    echo '  after_script:'
    echo '    - mkdir -p CostData-${CI_JOB_ID}/'
    echo '    - cp build/Testing/Temporary/CTestCostData.txt CostData-${CI_JOB_ID}/CTestCostData.txt'
    echo '    - mv build/logs/vsyncer_log.csv build/logs/vsyncer_log-${CI_JOB_ID}.csv'
  if [[ "$CI_COMMIT_BRANCH" != "$CI_DEFAULT_BRANCH" && "${VSYNCER_CHECK_FULL}" == "OFF" ]]
  then
    echo '  rules:'
    echo '    - if: $CI_COMMIT_BRANCH'
    echo '      changes:'
    echo '        compare_to: "main"'
    echo '        paths:'
    # First a list of hard-coded paths: The gitlab-ci file, the CMake files
    # and for verification jobs, all verification related files for a given label.
    # The verification code is not compiled in a normal way, so the dependency files
    # don't seem to list regeneration rules.
    # Attention: Quotes in the generated yaml need to be double quotes here!
    echo '          - .gitlab-ci.yml'
    echo '          - "**/CMakeLists.txt"'
    echo '          - "**/*.cmake"'
    if [[ "${VSYNCER_CHECK}" == "ON" ]]
    then
    echo "          - \"${label}/verify/**/*\""
    fi
    for file_path in "${LABEL_DEPENDENCIES[@]}"
    do
    echo "          - ${file_path}"
    done
  fi
    } >> "${YAML_DESTINATION}"
}

if [[ "${VSYNCER_CHECK_FULL}" == "ON" ]]; then
    PARENT_JOB_NAME="generate_full_check_jobs"
elif [[ "${VSYNCER_CHECK_FULL}" == "OFF" ]]; then
    PARENT_JOB_NAME="generate_quick_check_jobs"
else
    echo "Invalid value '${VSYNCER_CHECK_FULL}' for variable VSYNCER_CHECK_FULL."
    echo "Please select either 'ON' or 'OFF'"
    exit 1
fi

{
    echo 'stages:'
    echo '  - test'
    echo '  - check_imm'
    echo '  - check_rc11'
    echo '  - last'
    echo '.base:'
    # shellcheck disable=SC2016
    echo '  image: ${REGISTRY}/utils/docker/vsyncer2:latest'
    echo '  variables: '
    echo "    VSYNCER_CHECK: \"${VSYNCER_CHECK}\""
    echo "    VSYNCER_CHECK_FULL: \"${VSYNCER_CHECK_FULL}\""
    echo "    VSYNC_META_REPO: \"${VSYNC_META_REPO}\""
    #echo "    PKGTOOLS_FLAGS: ${PKGTOOLS_FLAGS}"
    echo "    BUILD_DIR: \"build\""
    if [[ -n "${JOB_TIMEOUT-}" ]]; then
    echo "  timeout: \"${JOB_TIMEOUT-}\""
    fi
    echo "  needs:"
    echo '    - pipeline: $PARENT_PIPELINE_ID'
    echo "      job: ${PARENT_JOB_NAME}"
    echo '  artifacts:'
    echo '    when: always'
    echo '    paths:'
    echo '      - build/junit'
    echo '      - build/logs'
    echo '      - CostData-*'
    echo '      - Testing/Temporary'
    echo '    reports:'
    echo "      junit: build/junit/*.xml"

} > "${YAML_DESTINATION}"


COST_FILE="${BUILD_DIR}/Testing/Temporary/CTestCostData.txt"

determine_job_batches() {
  # Implicit JOB_STAGE passed through to write_job_to_yaml()
  TEST_ARRAY_NAME="${1}" # Name of the array containing the job names
  # Spawn a new container for jobs with a cost above 40.
  COST_THRESHOLD=40

  current_cheap_jobs=()
  current_cheap_jobs_sum=0

  # Access the job array
  eval job_array=\( \${${TEST_ARRAY_NAME}[@]} \)

  # echo "Debug: array contents:" "${job_array[@]}"

  JOB_COUNTER=0

  for name in "${job_array[@]}"
  do
    if ! grep -E "${name}" "${COST_FILE}"; then
      COST=COST_THRESHOLD # Pessimistically assume a high cost for unknown tests
    else
      # Determine number of historic runs (second column), and cost (third column)
      NUM_RUNS=$(awk "\$1 == \"${name}\" {print \$2}" "${COST_FILE}" )
      if [[ $NUM_RUNS =~ ^[0-9]+$ && $NUM_RUNS -gt 0 ]]; then
        COST=$(awk "\$1 == \"${name}\" {print \$3}" "${COST_FILE}" )
        # Round up instead of down, so that the test costs at least 1
        COST=$(echo "${COST} + 0.5" | bc | xargs printf "%.0f\n")
      else
        # The test is in the cost file, but NUM_RUNS is 0, so likely the test timed out before,
        # which means it is an expensive test!
        COST=COST_THRESHOLD
      fi
    fi

    if (( COST >= COST_THRESHOLD )); then
      write_job_to_yaml "${name}"
    else
      current_cheap_jobs+=("${name}")
      current_cheap_jobs_sum=$((current_cheap_jobs_sum + COST))
    fi
    if [ "$current_cheap_jobs_sum" -gt "$COST_THRESHOLD" ]; then
      write_job_to_yaml "${current_cheap_jobs[@]}"
      current_cheap_jobs=()
      current_cheap_jobs_sum=0
    fi
  done

  if [ ${#current_cheap_jobs[@]} -ne 0 ]; then
      write_job_to_yaml "${current_cheap_jobs[@]}"
  fi

}

generate_jobs_for_label() {
  local label="$1"
  # We have complete test labels here, so make sure the match is complete by adding `^` and `$`.
  # Some folders may be substrings of sibling folders, such as `smr` and `smr_hp`.
  mapfile -t test_names < <(ctest --test-dir "${BUILD_DIR}" ${CTEST_REGEX_OPTION} -L "^${label}\$" -FA '.*' -E 'build_.*' --show-only=json-v1 | jq -r '.tests | .[] |  .name')
  BASE_JOB_NAME="${label}"
  determine_job_batches test_names
}

# Get an array of labels. First find where the labels start, strip whitespace from each line with
# awk and finally exclude the check label.
mapfile -t labels < <(ctest --test-dir "${BUILD_DIR}" ${CTEST_REGEX_OPTION} --print-labels | sed -n '/All Labels:/,$p' | tail -n +2 | awk '{$1=$1};1' | grep -E -v "check|\.\.|CROSS")

# Note: A label automatically corresponds to a relative directory path!
for label in "${labels[@]}"
do
  JOB_STAGE="test"
  LABEL_BUILD_DIR="build/${label}"
  if [[ ! -d "${LABEL_BUILD_DIR}" ]]; then
    echo "Error: label '${label}' does not correspond to directory. Please exclude this label."
    exit 1
  fi
  set -E
  DEP_LIST="$(find  "build/${label}" -name 'compiler_depend.make' \
         | cmake_get_deps --project-root "${PROJECT_ROOT}" --reduce-with-wildcards 47 \
                          --relative-to "${BUILD_DIR}" \
         | sort | uniq )"
  mapfile -t LABEL_DEPENDENCIES <<< "${DEP_LIST}"
  set +E
  generate_jobs_for_label "${label}"
  unset LABEL_DEPENDENCIES
done


# Now create a job that gets all the artifacts and updates the test cost data

{
echo 'merge_ctest_cost_updates:'
echo '  image: ${REGISTRY}/utils/docker/ctest_cost_merger:latest'
echo '  stage: last'
echo '  variables:'
echo "    VSYNC_META_REPO: \"${VSYNC_META_REPO}\""
# even if tests failed, we still want to update the cost.
echo '  rules:'
echo "    - if: '\$CI_COMMIT_BRANCH == \$CI_DEFAULT_BRANCH'"
echo '      when: always'
# Save artifacts to allow debugging
echo '  artifacts:'
echo '    when: always'
echo '    paths:'
echo '      - CostData-*'
echo '      - vsync-meta'
echo '  script:'
echo '    - ls -l .'
echo '    - git clone ${VSYNC_META_REPO}'
echo '    - cd vsync-meta'
# Create a copy, to save the original state, as a base for the diff command.
echo '    - cp CTestCostData.txt CTestCostData-base.txt'
# the tool doesn't handle globs yet, so do the globbing in bash
echo '    - COST_FILES=(../CostData-*/CTestCostData.txt)'
echo '    - update_args=( "${COST_FILES[@]/#/--updates=}" )'
echo '    - set -x'
# For every CtestCostData file from all jobs, calculate the diff and update the lines
# that changed. This effectively merges the updates, as if we had had one ctest invocation.
echo '    - ctest_cost_merge CTestCostData-base.txt "${update_args[@]}" -o CTestCostData.txt'
echo "    - git config --global user.name \"Vsync CI\""
echo "    - git config --global user.email vsync@huawei.com"
echo "    - git add CTestCostData.txt"
echo "    - git commit -m \"Automatic update of cost file\""
echo "    - git push"
} >> "${YAML_DESTINATION}"

# Create another job that merges the test results and checks the amount of skipped tests
{
echo 'merge_vsyncer_log:'
echo '  image: ${REGISTRY}/utils/docker/base:latest'
echo '  when: always'
echo '  stage: last'
echo '  artifacts:'
echo '    when: always'
echo '    paths:'
echo '      - build/logs'
echo '      - vsyncer_log.csv'
echo '      - vsyncer_skipped.csv'
echo '      - vsyncer_skipped.txt'
echo '  script:'
echo '    - echo "Checking if any checks ran..."'
echo '    - ls -l build/logs || exit 0'
echo '    - echo "Merging $(ls -l build/logs | wc -l) logs..."'
# First write the header line (first line in any file)
echo '    - CSV_FILES=(  build/logs/*.csv )'
echo '    - cat "${CSV_FILES[0]}" | head -n 1 > vsyncer_log.csv'
# Remove comments / headers
echo '    - cat "${CSV_FILES[@]}" | grep -E --invert '^#' >> vsyncer_log.csv'
# Find skipped tests and get the 2nd column (filename)
echo "    - ( grep 'internalError' vsyncer_log.csv || true ) | awk -F \"\\\"*,\\\"*\" '{print \$2}' > vsyncer_skipped.csv"
# [ -s file ] Checks if the file exists and has size greater than 0.
echo "    - if [ ! -s vsyncer_skipped.csv ]; then echo "No skipped tests"; exit 0 ; fi"
# Strip the .ll suffix in each line, and get the basename (strip any directories)
# We do not do `| uniq` here, in order to detect and fail on duplicated tests.
echo '    - sed -e 's/\.ll$//g' vsyncer_skipped.csv | xargs -L1 basename | sort > vsyncer_skipped.txt'
echo '    - scripts/check_skipped.sh vsyncer_skipped.txt'
} >> "${YAML_DESTINATION}"
