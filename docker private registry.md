- Docker Registry is a digital warehouse to store and manage all your docker images. 

- Example: "dockerhub" is a public docker registry

- DigitalOcean is a cloud infrastructure provider that helps others host their apps and data in the cloud. It is a platform where you can create and manage virtual servers (aka "droplets"). 

- DigitalOcean provides a platform to run and manage docker containers.

- DigitalOcean offers a service called DigitalOcean Container Registry, which is a private registry specifically designed to store and manage Docker images. 

WHAT IS KUBERNETES?
- Kubernetes is an Open Source Container Orchestration platform which automates the deployment, scaling and management of containerized applications. 

it is used because:
- for production ready deployment must have very little downtime and failures.
- continuous backup and restore
- used for management of micro-services

- DigitalOcean provides a service called DigitalOcean Kubernetes (DOKS) that takes care of the underlying infrastructure and provides easy-to-use interface to deploy and manage kubernetes clusters.

- Thus kubernetes manage containers while DOKS manages kubernetes.

# docker login
- By running the "docker login" command and providing your credentials, Docker verifies your identity and grants you access to the private registry. 
- Once logged in, you can perform operations like pulling, pushing, or managing Docker images stored in that registry.

- If docker image is built and pushed from a Jenkins server then we need to give our credentials to Jenkins so that it can access the repository.

WHAT IS "CONFIGURATION"?
- when you buy a new phone, you set it up according to your specific needs like connecting to the wifi network, creating a lock screen password, etc. so we are basically configuring (aka adjusting) it according to our preferences.

- "configuration" is the process of customizing settings to make it work as tailored to your specific needs.

IMAGE NAMING IN DOCKER REGISTERIES:

# registryDomain/imageName:tag

- registryDomain: location or service where docker image is hosted
- imageName: specific name given to the docker image
- tag: speficy the version of docker image (sometimes also used to rename an image)

when we pull from dockerhub, we simply write, "docker pull mongo:4.2" but what actually gets executes is "docker pull docker.io/library/mongo:4.2" where "docker.io/library" is the registryDomain.

we can't do the same for private repo as there is no default configuration for it.

WHAT HAPPENS AFTER PUSHING IT?
- we have a "digest" for each image that is a unique hash or identifier for that specific image.

- what we did here will all the Jenkins server will do to push the docker build image into a private docker repository. Jenkins server should have the credentials of docker repository to execute docker login.

WHAT IS A DEVELOPMENT SERVER?
- a "development server" acts as a dedicated workspace for developers to write, test, debug, collaborate before deploying it in the production environment.
- it can be a computer or a special software.