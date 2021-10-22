#!/bin/bash
set -e

mkdir "$OCTOPRINT_CONFIG_PATH"
cp config/config.yaml "$OCTOPRINT_CONFIG_PATH"
cp config/users.yaml "$OCTOPRINT_CONFIG_PATH"

mkdir "$OCTOPRINT_PATH"
cd "$OCTOPRINT_PATH"

python3 -m venv venv
source venv/bin/activate
pip install pip --upgrade
pip install octoprint