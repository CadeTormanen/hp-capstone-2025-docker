PREREQUISTES:
	-docker
	-docker-compose
	-Linux (maybe, only because I haven't tested docker on Windows or Mac yet. Mac is more likely to work.)

INFO:

	There are three containers.
		backend -> hosts backend-src folder code with node.js
		vue -> builds and hosts the vue project
		database -> runs MongoDB, reading/writing to the ./db folder

	Both Vue (frontend) and backend will automatically update when you make code changes.

GETTING STARTED:
	0. Install docker and docker-compose on your computer.
	1. Clone this repository to your computer (if you haven't already)
	2. Remove the readme files from the db, frontend-src, backend-src
	3. Clone the frontend and backend code into frontend-src and backend-src, respectively.
	4. Ensure you are not running any web servers on port 80 on your local computer (since the frontend Docker container will need port 80)
	5. Execute run.sh
	6. see the "Other Info" section for details on DNS

	*you will likely need sudo privileges 


DOCKER INFO:
	To see which docker containers are running, and their names:
		docker ps

	To access the shell of a container:
		docker exec -it <container-name> /bin/bash

OTHER INFO :
DNS resolution for frontend code is done by your browser/computer.
The frontend uses DNS to find the backend server and make API calls.
This means you either need to:
	1. change all frontend api call IP addresses to 192.168.0.201 while testing.
	2. set api.wsuv-hp-capstone.com to resolve to 192.168.0.201 in your hosts file while testing.
This is unfortunate but I haven't found a good way around this yet :)


