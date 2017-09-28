#!/usr/bin/env bash

is_nevercode_build=$NEVERCODE_BUILD
build_number=$NEVERCODE_BUILD_NUMBER

if [ "$is_nevercode_build" = true ] ; then
  echo "Updating build number to $build_number"
  /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $build_number" "${PROJECT_DIR}/${INFOPLIST_FILE}"
fi
