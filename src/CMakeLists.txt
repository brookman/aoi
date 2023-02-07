# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(aoi_library VERSION 0.0.1 LANGUAGES C)

add_library(aoi SHARED
  "aoi.c"
)

set_target_properties(aoi PROPERTIES
  PUBLIC_HEADER aoi.h
  OUTPUT_NAME "aoi"
)

target_compile_definitions(aoi PUBLIC DART_SHARED_LIB)
