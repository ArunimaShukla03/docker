docker pull redis
- pulls the "redis" image from dockerhub and doesn't run it yet.

docker run redis
- creates a container of the "redis" image and runs it  (docker pull and docker run in 1 command)

docker ps
- gives the list of running containers

^c
- stops the container

docker run -d redis
- if the redis image is already available, then uses it to start a new container, otherwise, pulls the image from dockerhub and then runs the container.
- this command runs the container in the detached mode (container will run in the background without showing its output directly in the terminal)
- allows to use terminal for other tasks

docker stop <container id>
- stops the container

docker start <container id>
- starts the container

docker ps -a
- shows all the containers running or not running (basically container history)

docker run -p6000:6379 redis
- this should be the command while running a container
- we need to bind the host's port with container's port in order to access the application running in the container 
- this is done so that the container allows external systems or services to access the application running inside it otherwise there is no way to reach the container
- here "-p" specifies the port
- 6000, here, is the host's port (any port of choice)
- 6379, here, is the given container's port
- two containers cannot run on the same port