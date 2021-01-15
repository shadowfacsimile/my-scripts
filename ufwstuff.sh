#!/bin/bash

echo "
	# enabling and check ufw status
	ufw enable
	ufw status
	ufw status numbered

	# deny all incoming and allow all outgoing
	ufw default deny incoming
	ufw default allow outgoing

	# allow specific port access
	ufw allow 22/tcp
	-or-
	ufw allow ssh
	-or-
	ufw limit 22/tcp

	# reload the firewall with new settings
	ufw reload"
