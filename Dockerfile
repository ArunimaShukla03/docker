# if we have a node.js application then we need "node" inside our container. Thus we have "node" as the base image. 

# this means that we have "node" already installed inside our image, that means when we start our container, node will already be present in it.

FROM  node 

# defining the environment variables (we have already done this using the docker run commands or docker compose)

# another alternative to do the same (prefer docker compose as incase of alteration, yaml file can be over-written and we don't have to re-builting the image)
 
ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PWD=password

# "RUN" can execute any kind of linux command inside the container

# here it creates a "/home/app" directory (THIS DIRECTORY IS ALWAYS INSIDE THE CONTAINER)

# this directory is going to be created in the container and not on the host.

# this is an image build process which means that when the image is building, this command is executed.

RUN mkdir -p /home/app

# executes on host
 
# can copy files from my host to container which is started from this image.

# keep in mind that the file copied are the files that are actually necessary in the final container (eliminte Dockerfile and docker compose files)

COPY ./home/app

# executes an entry point linux command, this executes when we launch an image or when container is created from the image

# "CMD" is the default command to run when a container is started from a built image

# here "node server.js" will be executed which is django equivalent of "python manage.py runserver", we just need to copy the relevant files to our container.

CMD ["node", "server.js"]

# we can also define an ENTRYPOINT which can be any executable command that we want to run when a container starts or it can even be a "shellscript" or ".sh" file which basically has a bunch of commands that can be executed by the shell.

# this file is always called "Dockerfile".

# dockerfile needs to always be updated with the files as if the files have different location, such as, /home/app/server.js then it also needs to be udpated
