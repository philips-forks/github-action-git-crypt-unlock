#!/bin/sh -l

set -eu

echo "$GIT_CRYPT_KEY" | base64  -d | git-crypt unlock -

