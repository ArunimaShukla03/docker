- A "dockerfile" contains all the necessary instructions and contents necessary to create a docker image while the docker image includes everything (i.e. dependencies, application code) that is needed to run an application.

- Thus, basically a "dockerfile" is a blueprint (detailed plan) for creating docker images.

- In a dockerfile, we start with a base image that serves as a foundation for our custom docker image.

- Example: if we have a javascript application with the node js backend thus we need base image as the foundation for our custom image.

HOW DO WE BUILD AN IMAGE FROM A DOCKERFILE?

# docker build -t my-app:1.0 .
- naming the image "my-app" with the tag "1.0" ("-t" defines the tag)
- also "." defines the location of the dockerfile, as we have it our current directory thus "." 
- this builds an image from our dockerfile

This is what basically "Jenkins" do as it takes our application and builds an image from that application.
 
# docker rmi <image id>
- deletes the image 
- if you have created a container from it, then you first need to delete the container and then the image 

# docker rm <container id>
- deletes the container

When you copy the files from host to the dockerfile, keep in mind that you don't need the "Dockerfile" and docker compose files in the actual container as they are used only in the image build process.