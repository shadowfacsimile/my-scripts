#!/bin/bash

echo "
	# check the number of jails setup in fail2ban
	sudo fail2ban-client status

	# check the banned IPs for ex - ssh access bans
	sudo fail2ban-client status ssh"
