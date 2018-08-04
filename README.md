# CloudNet Installer

[![Test status](https://ci.groundmc.net/buildStatus/icon?job=GiantTree/CloudNet-Installer/master)](https://ci.groundmc.net/job/GiantTree/job/CloudNet-Installer/job/master/)
[![GitHub issues](https://img.shields.io/github/issues/GiantTreeLP/CloudNet-Installer.svg)](https://github.com/GiantTreeLP/CloudNet-Installer/issues)
[![GitHub stars](https://img.shields.io/github/stars/GiantTreeLP/CloudNet-Installer.svg)](https://github.com/GiantTreeLP/CloudNet-Installer/stargazers)
[![GitHub license](https://img.shields.io/github/license/GiantTreeLP/CloudNet-Installer.svg)](https://github.com/GiantTreeLP/CloudNet-Installer/blob/master/LICENSE)


Installer for the [Cloud Network Environment Technology](https://github.com/CloudNetService/CloudNet).

Uses [`pacapt`](https://github.com/icy/pacapt) for compatibility with as many distributions as possible.

## Version

The installer is currently installing CloudNet version 2.1.8.

## Prequisites

[`curl`](https://curl.haxx.se/) has to be available to be able to download additional files.  
[`bash`](https://www.gnu.org/software/bash/) is necessary for `pacapt` to work. This script has also only been tested with bash.

### Debian-based distributions (Debian, Ubuntu, Linux Mint):

Just run this code before installing CloudNet:

    apt update && apt install curl -y

### Alpine-based distributions:

You need to add `curl` and `bash` manually:

    apk add curl bash -y --no-cache

## Installation

Simply copy and paste the following code into your shell:

    curl -sL "https://git.groundmc.net/GiantTree/CloudNet-Installer/raw/branch/master/install.sh" | bash

Launching the installer as the `root` user checks and installs all necessary dependencies.  
Launching the installer as a non-root user skips this step.

## Compatibility

All tests have been conducted with the slim images available for Docker, where possible.

| Distribution   | Version                 | Tested/Compatible |
| :------------- | :---------------------- | :---------------- |
| **Debian**     | testing                 | ✅                 |
| Debian         | 8 (Jessie)              | ✅                 |
| Debian         | 9 (Stretch)             | ✅                 |
| **Ubuntu**     | 18.04 (Bionic Beaver)   | ✅                 |
| Ubuntu         | 17.10 (Artful Aardvark) | ✅                 |
| Ubuntu         | 16.04 (Xenial Xerus)    | ✅                 |
| **Alpine**     | 3.8                     | ✅                 |
| Alpine         | 3.7                     | ✅                 |
| **Arch Linux** | Latest                  | ✅                 |
| **CentOS**     | 7 (latest)              | ✅                 |
| **Fedora**     | 28 (Twenty Eight)       | ✅                 |
| Fedore         | 27 (Twenty Seven)       | ✅                 |
| Fedora         | 26 (Twenty Six)         | ✅                 |