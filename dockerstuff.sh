#!/bin/bash

echo "
	// run docker container
	docker run -dv ~/tmp:/src python:3 python /src/test.py
	docker run -dvit ~/tmp:/src python:3 /bin/bash

	// build docker images
	docker build -t image_name .

	// remove images
	docker rmi -f image_name

	// list docker images
	docker image ls

	// list docker containers
	docker container ls

	// enter the interactive container
	docker exec -it container_name /bin/bash

	// create a network to allow sharing between containers
	docker create network network-name

	example:
	docker run --rm -d --net multiple --name mul_nginx -v $(pwd):/usr/share/nginx/html -p 8080:80 nginx:latest
	docker run --rm -it --net multiple --name mul_node python:3 /bin/bash"
