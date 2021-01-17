#!/bin/bash

echo "
	// run docker container
	docker run --rm -v ~/tmp:/src python:3 python /src/test.py
	docker run --rm -it -v ~/tmp:/src python:3 /bin/bash

	--rm   -> remove the container after exit
	-v     -> mount a volume -> /host/folder/path:/container/folder/path
	-it    -> make it interactive
	-d     -> run as a daemon
	-p     -> port forwarding container to host -> -p 8080:80
	--name -> give a name to the container, else docker will

	// build docker images
	docker build -t image_name .

	-t   -> tag/image name

	// remove images
	docker rmi -f image_name

	// list docker images
	docker images
	docker image ls

	// list docker containers
	docker container ls
	docker ps

	// enter the interactive container
	docker exec -it container_name /bin/bash

	// create a network to allow sharing between containers
	docker create network network-name

	--net  -> use the network

	example:
	docker run --rm -d --net multiple --name mul_nginx -v $(pwd):/usr/share/nginx/html -p 8080:80 nginx:latest
	docker run --rm -it --net multiple --name mul_node python:3 /bin/bash"
