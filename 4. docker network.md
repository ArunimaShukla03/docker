- in case we have multiple containers in our applications and they are in same docker network as they are the part of the same application, like mongoDB (for database) and mongo express container (interface for managing and interacting with mongoDB without terminal).

- they can talk to each other without the port number as they are in the same network but the applications running outside the docker like node.js need a port for them to be connected.

# docker network ls
- we can see all the docker networks

# docker network create mongo-network
- this creates a network with a custom name "mongo-network"
- if we need to run mongoDB container and mongo express container in the "mongo network", we need to provide this network as an option when we run the container using docker run command

# docker run -p27017:27017 -d -e MONGO_INITDB_ROOT_USERNAME=admin -e MONGO_INITDB_ROOT_PASSWORD=password --name mongodb --net mongo-network mongo
- running the container "mongo"
- port binding from 27017 (host's port) to 27017 (desired container's port)
- detached mode
- environment variable, setting username and password in the startup process of the mongo container
- overwriting the name of the container to "mongodb"
- runs in created "mongo-network"

# docker run -p8081:8081 -d -e ME_CONFIG_MONGODB_ADMINUSERNAME=admin -e ME_CONFIG_MONGODB_ADMINPASSWORD=password --net mongo-network --name mongo-express -e ME_CONFIG_MONGODB_SERVER=mongodb mongo-express
- running the container "mongo-express"
- port binding from 8081 (host's port) to 8081 (desired container's port)
- detached mode
- environment variable (MongoDB Express uses these credentials to prove that it has permission to access the MongoDB database)
- connects the container to  "mongo-network" (allowing it to connect to the "mongodb" container in it)
- overwriting the name of the container to "mongo-express"
- tells mongodb-express the address of the mongodb-database it needs connect to

# docker logs <container id> | tail
- shows only the last part of log

# docker logs <container id> -f
- streams the logs 