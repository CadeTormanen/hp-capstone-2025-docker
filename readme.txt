PREREQUISTES:
	-docker
	-docker-compose
	-Linux (maybe, only because I haven't tested docker on Windows or Mac yet)

INFO:

	There are four containers.
		backend -> runs backend-src folder code with node.js
		frontend -> runs the nginx web server, accessing the contents of frontend-src
		vue -> builds the vue project after changes have been made
		database -> runs MongoDB, reading/writing to the ./db folder

	backend, frontend, and database are daemons, and should always be running.
	vue simply builds the vue project, and stops.


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


ALSO:
	Make sure you're not running anything on port 80, since the frontend container binds 	     to the host's (your) http port in order to show you the web interface.
