message(STATUS "Configuring Googletest")

include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY https://github.com/google/googletest.git
  GIT_TAG        release-1.8.0
)

FetchContent_GetProperties(googletest)
if(NOT googletest_POPULATED)
  FetchContent_Populate(googletest)
  add_subdirectory(${googletest_SOURCE_DIR} ${googletest_BINARY_DIR})
endif()

set(GTEST_INCLUDE_DIR ${googletest_SOURCE_DIR}/googletest/include)
include_directories(${GTEST_INCLUDE_DIR})
message(STATUS "Configuring Googletest - done")