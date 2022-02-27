#!/bin/bash -e

# This file sets the appropiate compiler and flags for compiling for iOS without XCode
sdk=iphoneos
export IOS_OSVER=12.0

export IOS_COMPILER=$(xcrun --sdk $sdk --find clang)
export IOS_CC=$IOS_COMPILER
export IOS_CXX=$IOS_COMPILER
export IOS_FLAGS="-isysroot $(xcrun --sdk $sdk --show-sdk-path) -arch arm64 -miphoneos-version-min=$IOS_OSVER -fvisibility=hidden -fdata-sections -ffunction-sections -fno-unwind-tables -fno-asynchronous-unwind-tables -Ofast"
