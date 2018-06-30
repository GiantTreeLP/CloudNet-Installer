# CloudNet Installer

[![Test status](https://ci.groundmc.net/buildStatus/icon?job=GiantTree/CloudNet-Installer/master)](https://ci.groundmc.net/job/GiantTree/job/CloudNet-Installer/job/master/)
[![GitHub issues](https://img.shields.io/github/issues/GiantTreeLP/CloudNet-Installer.svg)](https://github.com/GiantTreeLP/CloudNet-Installer/issues)
[![GitHub stars](https://img.shields.io/github/stars/GiantTreeLP/CloudNet-Installer.svg)](https://github.com/GiantTreeLP/CloudNet-Installer/stargazers)
[![GitHub license](https://img.shields.io/github/license/GiantTreeLP/CloudNet-Installer.svg)](https://github.com/GiantTreeLP/CloudNet-Installer/blob/master/LICENSE)


Installer for the [Cloud Network Environment Technology](https://www.spigotmc.org/resources/cloudnet-the-cloud-network-environment-technology.42059/).

Uses [`pacapt`](https://github.com/icy/pacapt) for compatibility with as many distributions as possible.

## Version

The installer is currently installing CloudNet version 2.1.5.

## Prequisites

[`curl`](https://curl.haxx.se/) has to be available to be able to download additional files.  
[`bash`](https://www.gnu.org/software/bash/) is necessary for `pacapt` to work. This script has also only been tested with bash.

For Debian-based distros, just run this code before installing CloudNet:

    apt update && apt install curl -y

On Alpine-based distributions, you need to add `curl` and `bash` manually:

    apk add curl bash -y --no-cache

## Installation

Simply copy and paste the following code into your shell:

    curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" | bash

Launching the installer as the `root` user checks and installs all necessary dependencies.  
Launching the installer as a non-root user skips this step.

## Compatibility

All tests have been conducted on the slim images available for Docker.

| Distribution | Version                 | Tested/Compatible |
| ------------ | ----------------------- | ----------------- |
| Debian       | 8 (Jessie)              | ✅                |
| Debian       | 9 (Stretch)             | ✅                |
| Debian       | testing                 | ✅                |
| ------------ | ----------------------- | ----------------- |
| Ubuntu       | 14.04 (Trusty Tahr)     | ✅                |
| Ubuntu       | 16.04 (Xenial Xerus)    | ✅                |
| Ubuntu       | 17.10 (Artful Aardvark) | ✅                |
| ------------ | ----------------------- | ----------------- |
| Alpine       | 3.7                     | ✅                |
| Alpine       | 3.6                     | ✅                |
| Alpine       | 3.5                     | ✅                |
| ------------ | ----------------------- | ----------------- |
| Arch Linux   | Latest                  | ✅                |
| ------------ | ----------------------- | ----------------- |
| CentOS       | 7.4                     | ✅                |
| ------------ | ----------------------- | ----------------- |
| Fedora       | 26 (Twenty Six)         | ✅                |
| Fedora       | 27 (Twenty Seven)       | ✅                |