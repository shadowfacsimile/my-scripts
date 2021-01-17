#!/bin/bash

echo "
	# To connect to any wireless

	1. sudo wpa_cli + scan + scan_results [if you want to check the available ssid]
	2. sudo wpa_passphrase SSID 'passphrase' >> /etc/wpa_suppicant/wpa_supplicant-wlp2s0.conf [you may have to run as root]
	3. remove the passphrase from /etc/wpa_supplicant/wpa_supplicant-wlp2s0.conf and retain only the encoded PSK if you want
	4. Reboot & Done!"
