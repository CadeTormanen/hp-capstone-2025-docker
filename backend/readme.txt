===== Backend (Docker) =====

==== Starting the server ====
To start the backend server, use the 'run.sh' script
This will Download, spin up a Docker container, copy the code in './src' into the Docker container and execute it.

NOTE: If you do not have a MongoDB instance running locally on port 27017, the backend server will not start.
You can start the MongoDB instance in the "../database" directory if you need a MongoDB server.
You can view whether the MongoDB container is running with 'docker ps'

==== Stopping the server ====
To stop the backend server, use 'docker container kill <container_alias>' command.

To get the list of running containers (and their aliases), use 'docker ps'.

==== FAQ ====

=== What is the point of using Docker? ===
We can now run our code base on any system that has Docker installed on it.
This has great implications for portability, stability and testing.
There is no more 'it works on my machine' because we are effectively now all using the same machine.

Though; Windows hosts will have some trouble, since the setup script is written in Bash. We need a PS or CMD version.
For now, Windows users may want to use a VM.

=== I've started the server, now how do I use it? ===
The backend and frontend Docker containers run on their own private network, simulating the internet.
The backend is listening on this private network for API calls, and the frontend sends API calls over this private network.

The frontend exposes port 80 to the host system so you can access the web interface (localhost:80)

=== I want SSH/CLI to one of these servers, how can I do this? ===
If you wish to connect to these containers directly to run commands from their CLI, you can use the following:
docker exec -it <container_alias> /bin/bash

SSH is currently not setup.




