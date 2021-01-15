#!/bin/bash

echo "
	# start transmission-daemon
	transmission-daemon

	# add torrent
	transmission-remote -a 'magnet_link'

	# status of torrent
	transmission-remote -l"
