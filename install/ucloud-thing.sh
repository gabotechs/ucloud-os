#!/bin/bash
set -e

git clone "$UCLOUD_THING_REPO" "$UCLOUD_THING_PATH"

cd "$UCLOUD_THING_PATH"

bash update.sh