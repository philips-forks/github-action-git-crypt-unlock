#!/bin/sh -l

set -eu

git config --global --add safe.directory "${GITHUB_WORKSPACE}"

echo "$GIT_CRYPT_KEY" | base64  -d | git-crypt unlock -

