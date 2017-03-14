cmake_minimum_required(VERSION 2.8)
project(Hello)

SET (CMAKE_BUILD_TYPE Debug) # 默认构建Debug模式

file(GLOB_RECURSE source_files ${CMAKE_CURRENT_SOURCE_DIR}/main.c)
add_executable(hello ${source_files})
