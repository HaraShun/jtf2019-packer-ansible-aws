#!/bin/sh -xe
if echo ${CODEBUILD_SOURCE_VERSION} | grep -q 'pr/'; then
  /bin/sh scripts/validate.sh
else
  /bin/sh scripts/build.sh
fi
