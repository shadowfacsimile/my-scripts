#!/bin/bash

echo "
	# push file to remote server where ssh is on a non-standard port
	rsync -v -e 'ssh -p 1000' ~/temp.txt user@100.50.0.100:~/folder/

	# pull file from remote server to local
	rsync -v -e 'ssh -p 1000' user@100.50.0.100:~/temp.txt ~/folder/

	# -v -> verbose
	# -z -> for compressed transfers, saves on bandwidth
	# -P -> --progress + --partial
	# -a -> sync folders - remember, remember the trailing / for folder sync
	# -n -> --dry-run for doing a dry run before executing actual command
"
