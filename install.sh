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
	./pacapt -Qi "$1" 2>&1 >/dev/null
	if [ $? -eq 1 ]; then
		./pacapt --noconfirm -S "$*"
		if [ $? -ne 0 ]; then
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
				# Handle Debian 8
				if [ "$VERSION_ID" = "8" ]; then
					echo "deb https://deb.debian.org/debian jessie-backports main" >> "/etc/sources.list.d/jessie-backports.list"
					update_package_cache
					install_package 'openjdk-8-jre-headless' '-t' 'jessie-backports'
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
	./pacapt -Sy
	if [ $? -ne 0 ]; then
		echo "Error updating the package cache."
		echo "Aborting installation."
		exit 1
	fi
}

echo "NOTICE: The installation requires root permissions to succeed!"

if [ $EUID -ne 0 ]; then
	echo "Error: Must be root!"
	exit 2
fi

echo "Welcome to the CloudNet installer for version 2.1Pv30"
echo "This script will download CloudNet and it's dependencies,"
echo "so that you can run it right away."
sleep 1

echo "Downloading dependencies..."
curl --progress-bar -L -q -o ././pacapt "https://raw.githubusercontent.com/icy/./pacapt/ng/./pacapt" && chmod +x ././pacapt

echo "Updating package cache..."
update_package_cache

echo "Installing dependencies..."
install_package 'screen'
install_package 'unzip'
install_java

echo "Downloading CloudNet version 2.1Pv30..."
curl --progress-bar -L -q -o cloudnet.zip "http://klautnett.de/cloudnet/version/pre/2.1.Pv30/CloudNet.zip"

echo "Verifying download..."
unzip -tq cloudnet.zip

echo "Unpacking CloudNet..."
unzip -q cloudnet.zip

echo "Preparing start scripts..."
chmod u+x "CloudNet-Master/start.sh" "CloudNet-Wrapper/start.sh"

echo "Checking for incompatibilities..."
fuser 1410/tcp 1420/tcp
if [ $? -eq 0 ]; then
	echo "Another CloudNet-Master is already running."
	echo "You might want to stop it first or configure this one to use different ports."
fi
fuser 25565/tcp
if [ $? -eq 0 ]; then
	echo "Another process is using the port 25565 which is typically used by Minecraft."
	echo "You might want to stop it first or configure this one to use different ports."
fi

echo "Cleaning up..."
# rm "./pacapt" "cloudnet.zip" "$0"

echo "Installation successful."
echo "Enjoy the Cloud Network Environment Technology CloudNet"
echo "For questions regarding this script, head over to the official Discord:"
echo "https://discord.gg/CPCWr7w"
