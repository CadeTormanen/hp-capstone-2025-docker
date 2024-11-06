PREREQUISTES:
	-docker
	-docker-compose
	-Linux (maybe, only because I haven't tested docker on Windows or Mac yet. Mac is more likely to work.)

INFO:

	There are four containers.
		backend -> runs backend-src folder code with node.js
		frontend -> runs the nginx web server, accessing the contents of frontend-src
		vue -> builds the vue project after changes have been made
		database -> runs MongoDB, reading/writing to the ./db folder

	backend, frontend, and database are daemons, and should always be running.
	vue simply builds the vue project, and stops.

GETTING STARTED:
	0. Install docker and docker-compose on your computer.
	1. Clone this repository to your local computer (if you haven't already)
	2. Remove the readme files from frontend-src and backend-src
	3. Clone the frontend and backend code into frontend-src and backend-src, respectively.
	4. Ensure you are not running any web servers on port 80 on your local computer (since the frontend Docker container will need it)
	5. execute "sudo docker-compose up" in the root of the Docker repo (same directory as the docker-compose YAML file)
	6. wait just a few seconds. If successful, logs should show non-error messages for all four images.


HOW TO USE:

	To start entire stack:
		docker-compose up -d
		
		this starts all four containers

	To bring down entire stack:
		docker-compose down

	To see which docker containers are running, and their names:
		docker ps

	To start a specific container:
		docker-compose up -d <container-name>

	To access the shell of a container:
		docker exec -it <container-name> /bin/bash

