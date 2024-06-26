set(aoiVersion "aoi-v0.0.2-dev.2") # generated; do not edit

# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "flutter_aoi")
project(${PROJECT_NAME} LANGUAGES CXX)

# Download the binaries if they are not already present.
set(AoiLibRoot "${CMAKE_CURRENT_SOURCE_DIR}/${aoiVersion}")
set(AoiArchivePath "${AoiLibRoot}.tar.gz")
if(NOT EXISTS ${AoiArchivePath})
  file(DOWNLOAD
    "https://github.com/brookman/aoi/releases/download/${aoiVersion}/EmbeddedAoi.tar.gz"
    ${AoiArchivePath}
    TLS_VERIFY ON
  )
endif()

# Extract the binaries, overriding any already present.
file(REMOVE_RECURSE ${AoiLibRoot})
file(MAKE_DIRECTORY ${AoiLibRoot})
execute_process(
  COMMAND ${CMAKE_COMMAND} -E tar xzf ${AoiArchivePath}
  WORKING_DIRECTORY ${AoiLibRoot}
)

# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
set(flutter_aoi_bundled_libraries
  "${AoiLibRoot}/${FLUTTER_TARGET_PLATFORM}/libembedded_aoi.so"
  PARENT_SCOPE
)
