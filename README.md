# CloudNet Installer

Installer for the [Cloud Network Environment Technology](https://www.spigotmc.org/resources/cloudnet-the-cloud-network-environment-technology.42059/).

Uses [`pacapt`](https://github.com/icy/pacapt) for compatibility with as many distributions as possible.

## Version

The installer is currently installing CloudNet version 2.1.Pv30.

## Prequisites

[`curl`](https://curl.haxx.se/) has to be available to be able to download additional files.  
[`bash`](https://www.gnu.org/software/bash/) is necessary for `pacapt` to work. This script has also only been tested with bash.

For Debian-based distros, just run this code before installing CloudNet:

    apt update && apt install curl -y

## Compatibility

All tests have been conducted on the slim images available for Docker.

| Distribution |         Version         | Tested/Compatible |
| ------------ | ----------------------- | ----------------- |
| Debian       | 8 (Jessie)              | ✅                 |
| Debian       | 9 (Stretch)             | ✅                 |
| Debian       | testing                 | ✅                 |
| ------------ | ----------------------- | ----------------- |
| Ubuntu       | 14.04 (Trusty Tahr)     | ✅                 |
| Ubuntu       | 16.04 (Xenial Xerus)    | ✅                 |
| Ubuntu       | 17.10 (Artful Aardvark) | ✅                 |
| ------------ | ----------------------- | ----------------- |
| Alpine       | 3.7                     | ✅                 |
| Alpine       | 3.6                     | ✅                 |
| Alpine       | 3.5                     | ✅                 |
| ------------ | ----------------------- | ----------------- |
| Arch Linux   | Latest                  | ✅                 |



## Running

Simply copy and paste the following code into your shell:

    curl -L "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/master/install.sh" | bash
