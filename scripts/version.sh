#!/bin/bash

CURR_VERSION=aoi-v`awk '/^version: /{print $2}' packages/aoi/pubspec.yaml`

# iOS & macOS
APPLE_HEADER="release_tag_name = '$CURR_VERSION' # generated; do not edit"
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_aoi/ios/flutter_aoi.podspec
sed -i.bak "1 s/.*/$APPLE_HEADER/" packages/flutter_aoi/macos/flutter_aoi.podspec
rm packages/flutter_aoi/macos/*.bak packages/flutter_aoi/ios/*.bak

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(aoiVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android linux windows
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_aoi/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_aoi/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_aoi/
