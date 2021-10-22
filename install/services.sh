#!/bin/bash
set -e

cp services/ucloud-thing.service /etc/systemd/system/
cp services/octoprint.service /etc/systemd/system/
cp services/dbus-org.bluez.service /etc/systemd/system/

systemctl daemon-reload