#!/bin/sh
#
# CloudNet Installer
# Automatically installs the CloudNet software and necessary dependencies.
# Additionally checks for issues regarding other running services.
#
# Author: GiantTree
# Version: 0.2a
# Compatible with CloudNet version 2.1.Pv30

install_package() {
	echo "Checking and installing '$1'..."
	if ! ./pacapt -Qi "$1" >/dev/null 2>&1; then
		if ! ./pacapt --noconfirm -S $@; then
			echo "Error installing '$1'."
			echo "Aborting installation."
			exit 1
		fi
	else
		echo "'$1' already installed."
	fi
}

install_java() {
	if [ -f "/etc/os-release" ]; then
		(
			source "/etc/os-release"

			# Handle Debian
			if [ "$ID" = "debian" ]; then
				# Handle slim versions
				# https://github.com/debuerreotype/docker-debian-artifacts/issues/24
				mkdir -p "/usr/share/man/man1"
				
				if [ "$VERSION_ID" = "8" ]; then
					echo "Found Debian 8, using jessie-backports of Java 8"
					echo "deb http://deb.debian.org/debian jessie-backports main" > "/etc/apt/sources.list.d/jessie-backports.list"
					update_package_cache
					install_package 'openjdk-8-jre-headless' '-t' 'jessie-backports'
					return
				elif [ "$VERSION_ID" > "8" ]; then
					echo "Found modern Debian, Java 8 should be in the official sources"
					install_package 'openjdk-8-jre-headless'
					return
				else
					echo "Unsupported version of Debian."
					echo "You can try manually installing Java using the 'openjdk-8-jre-headless' package."
					echo "Aborting..."
					exit 1
				fi
			fi
		)
	fi

	install_package 'openjdk-8-jre-headless' && return
	
	echo "Could not install java."
	echo "Aborting installation."
	exit 1
}

update_package_cache() {
	if ! ./pacapt -Sy; then
		echo "Error updating the package cache."
		echo "Aborting installation."
		exit 1
	fi
}

check_incompatibilities() {
	if [ ! -x "$(which fuser)" ]; then
		return
	fi
	echo "Checking for incompatibilities..."
	if fuser '1410/tcp' '1420/tcp'; then
		echo "Another CloudNet-Master is already running."
		echo "You might want to stop it first or configure this one to use different ports."
	fi

	if fuser '25565/tcp'; then
		echo "Another process is using the port 25565 which is typically used by Minecraft."
		echo "You might want to stop it first or configure this one to use different ports."
	fi
}

echo "NOTICE: The installation requires root permissions to succeed!"

if [ $EUID -ne 0 ]; then
	echo "Error: Must be root!"
	exit 2
fi

echo "Welcome to the CloudNet installer for version 2.1Pv30"
echo "This script will download CloudNet and it's dependencies, so that you can run it right away."
sleep 1

echo "Downloading dependencies..."
curl --progress-bar -L -q -o "./pacapt" "https://raw.githubusercontent.com/icy/./pacapt/ng/./pacapt" && chmod +x "./pacapt"

echo "Updating package cache..."
update_package_cache

echo "Installing dependencies..."
install_package 'screen'
install_package 'unzip'
install_java

echo "Downloading CloudNet version 2.1Pv30..."
curl --progress-bar -L -q -o "cloudnet.zip" "http://klautnett.de/cloudnet/version/pre/2.1.Pv30/CloudNet.zip"

echo "Verifying download..."
unzip -tq "cloudnet.zip"

echo "Unpacking CloudNet..."
unzip -qo "cloudnet.zip"

echo "Preparing start scripts..."
chmod u+x "CloudNet-Master/start.sh" "CloudNet-Wrapper/start.sh"

check_incompatibilities

echo "Cleaning up..."
rm "./pacapt" "cloudnet.zip"

echo "Installation successful."
echo "Enjoy the Cloud Network Environment Technology CloudNet"
echo "For questions regarding this script, head over to the official Discord:"
echo "https://discord.gg/CPCWr7w"
echo ""
