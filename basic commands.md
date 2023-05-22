# docker pull redis
- pulls the "redis" image from dockerhub and doesn't run it yet.

# docker run redis
- creates a new container of the "redis" image and runs it  (docker pull and docker run in 1 command)
- "run" is associated with images as it is used to create the container from an image

# docker ps
- gives the list of running containers

# ^c
- stops the container

# docker run -d redis
- if the "redis" image is already available, then uses it to start a new container, otherwise, pulls the image from dockerhub and then runs the container.
- this command runs the container in the detached mode (container will run in the background without showing its output directly in the terminal)
- allows to use terminal for other tasks

# docker stop <container id>
- stops the container

# docker start <container id>
- starts the container
- "start" is associated with containers as after the containers are created, we can start or stop them

# docker ps -a
- shows all the containers running or not running (basically container history)

# docker run -p6000:6379 redis
- this should be the command while running a container
- we need to bind the host's port with container's port in order to access the application running in the container 
- this is done so that the container allows external systems or services to access the application running inside it otherwise there is no way to reach the container
- here "-p" specifies the port
- 6000, here, is the host's port (any port of choice)
- 6379, here, is the given container's port
- two containers cannot run on the same port

docker images
- gives all the local images

# we can also combine "docker run -d redis" and "docker run -p6000:6379 redis" in a single command "docker run -d -p6000:6379 redis"

docker run -d -p6000:6379 redis-older redis
- here we run the "redis" image in a detached mode where the host port  6000 is binded with container's port 6379
- we provide a container name here "redis-older" for the "redis" image