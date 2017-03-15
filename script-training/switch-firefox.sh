#!/bin/bash

firefox_version="$(firefox -v)"
echo "Current version: $firefox_version"
sudo rm /usr/bin/firefox
if [ "$firefox_version" = "Mozilla Firefox 47.0.1" ]; then
	echo "Changing to 46 ..."
	sudo ln -s /opt/firefox-sdk-46_0/bin/firefox /usr/bin/firefox
else
	echo "Changing to 47.01 ..."
	sudo ln -s /opt/firefox-sdk/bin/firefox /usr/bin/firefox
fi

echo "New current version: $(firefox -v)"
