#!/bin/bash
echo "
	# add a user
	useradd user
	useradd --create-home user

	# set password for user
	passwd user

	# add a group
	groupadd group

	# add user to a group
	usermod -aG group user
	usermod --append --groups group user

	# remove user from a group
	gpasswd -d user group
	
	# change ownership of a folder recursively
	chown -R user:group folder
	"


