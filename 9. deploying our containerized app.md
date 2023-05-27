WHAT IS DEPLOYING ON DEVELOPMENT SERVER?
- deploying on development server means to deploy the app in an environment that mimics the production environment for testing and debugging purposes.

- here we are going to use "docker compose" for deploying the applcation.

HOW TO START AN APPLICATION ON DEVELOPMENT SERVER?
- we need all the containers that make-up that application environment.

- thus we will add "my-app" build image to our "mongo.yaml" file.

- In order to pull the image from the private registry the enviroment where we are executing this docker compose file should be logged into the docker repository.

# vim mongo.yaml
- copy the contents of docker compose to the development server in the terminal
- this creates a new file called "mongo.yaml" and has the same contents as that of docker compose. 

- now run the application.