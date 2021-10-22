#!/bin/bash
set -e

source env.sh

bash install/apt.sh
bash install/ucloud-thing.sh
bash install/octoprint.sh
bash install/services.sh
