# CloudNet Installer

Installer for the [Cloud Network Environment Technology](https://www.spigotmc.org/resources/cloudnet-the-cloud-network-environment-technology.42059/).

## Version

The installer is currently installing CloudNet version 2.1.Pv30.

## Prequisites

[`curl`](https://curl.haxx.se/) has to be available to be able to download additional files.

For Debian-based distros, just run this code before installing CloudNet:

    apt update && apt install curl -y

## Compatibility

All tests have been conducted on the slim images available for Docker.

| Distribution |   Version   | Tested/Compatible |
| ------------ | ----------- | ----------------- |
| Debian       | 8 (Jessie)  | ✅                |
| Debian       | 9 (Stretch) | ✅                |
| Debian       | testing     | ✅                |



## Running

Simply run copy and paste the following code into your shell:

    curl -L "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" | bash
