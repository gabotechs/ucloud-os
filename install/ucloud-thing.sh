#!/bin/bash
set -e

git clone "$UCLOUD_THING_REPO" "$UCLOUD_THING_PATH" --branch stable

cd "$UCLOUD_THING_PATH"
python3 -m venv venv
bash update.sh