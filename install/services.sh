#!/bin/bash
set -e

cp services/ucloud-thing.service /etc/systemd/system/
cp services/octoprint.service /etc/systemd/system/
cp services/dbus-org.bluez.service /etc/systemd/system/

systemctl daemon-reload
systemctl enable ucloud-thing
systemctl enable octoprint

systemctl start octoprint
systemctl start ucloud-thing
