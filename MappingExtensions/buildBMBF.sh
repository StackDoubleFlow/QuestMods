#!/bin/bash

NDKPath=`cat ndkpath.txt`

buildScript="$NDKPath/build/ndk-build"

./$buildScript NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk
mkdir BMBFBuild
cp "./bmbfmod.json" "./libs/arm64-v8a/libmappingextensions.so" "./libs/arm64-v8a/libbeatsaber-hook_0_8_4.so" "./libs/arm64-v8a/libcodegen_0_4_0.so" ./BMBFBuild
cd BMBFBuild
zip "../MappingExtensions_v0.18.0.zip" *
cd ..
rm -r BMBFBuild