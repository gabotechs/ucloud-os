# UCloud OS installer

The base OS should be Raspberry Pi OS, can be installed directly with rpi-imager in 
any sd card. https://www.raspberrypi.com/software/.

Keep in mind that this OS will not expose any ssh server, so installation should be 
made manually connecting a keyboard and a screen to the Raspberry. Once the Raspberry
boots, it will prompt for login credentials, which will be the default ones 
(user: pi, pass: raspberry).

In order to install the UCloud OS in Raspberry Pi OS, the following commands must be
executed in the first boot of a fresh installation of Raspberry Pi OS:

```shell
sudo apt update
sudo apt install -y git
git clone https://github.com/gabrielmusat/ucloud-os.git
cd ucloud-os
sudo bash install.sh
```

this should boot octoprint + ucloud software. The Raspberry should be already publishing
a bluetooth service to establish WiFi