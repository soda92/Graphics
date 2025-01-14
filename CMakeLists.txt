# Copyright 2021 SMS
# License(Apache-2.0)

# 指定最小版本号
cmake_minimum_required(VERSION 3.16)

# 指定项目名和版本号
project(Graphics VERSION 0.0.0)

# 指定 C++ 标准
set(CMAKE_CXX_STANDARD          23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 选项
option(BUILD_EXAMPLES    "Build examples"    ON)
option(BUILD_TESTS       "Build tests"       ON)

# 指定默认编译类型
if(NOT DEFINED CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

# 指定构建目录
set(CMAKE_BINARY_DIR               "${PROJECT_SOURCE_DIR}/build")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(LIBRARY_OUTPUT_PATH            "${CMAKE_BINARY_DIR}/lib")
set(EXECUTABLE_OUTPUT_PATH         "${CMAKE_BINARY_DIR}/bin")

macro(add_define IDENT)
    add_definitions("-D${IDENT}")
endmacro()

if(WIN32)
    add_define(_CRT_SECURE_NO_WARNINGS)
    add_define(_SCL_SECURE_NO_WARNINGS)
    add_define(UNICODE)
    add_define(_UNICODE)
    add_define(NOMINMAX)
endif()

if(MSVC)
  set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MT")
  set(CMAKE_CXX_FLAGS_DEBUG   "${CMAKE_CXX_FLAGS_DEBUG} /MTd")
endif()

# 添加第三方库
set(DEPS_DIR "${PROJECT_SOURCE_DIR}/Deps")

add_subdirectory(Source)

if(BUILD_EXAMPLES)
    add_subdirectory(Examples/Triangle)
endif()
