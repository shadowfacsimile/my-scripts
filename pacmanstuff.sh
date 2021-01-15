#!/bin/bash

echo "
	-S -> sync/install
	-R -> remove/uninstall
	-Q -> query locally

	# install/sync a program
	# -y check for newer versions
	# -u update immediately
	pacman -Syu program

	# search for program
	pacman -Ss program

	# remove a program 
	# -s for dependencies
	# -n for system config files
	pacman -Rns program

	# clear pacman cache
	pacman -Sc

	# query for program
	pacman -Q program

	# query programs
	# -e explicity installed by user
	# -n installed from main arch repo
	# -m installed from AUR
	pacman -Q

	# orphan dependencies
	pacman -Qtdq"
