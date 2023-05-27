# docker-compose -f mongo.yaml up
- generally "docker compose" is already present as a package when you install docker
- '-f' is used to specify the file which needs to be executed (here "mongo.yaml")
- 'up' starts all the containers in "mongo.yaml"

(we will see when we execute this command, mongodb-express is waiting for mongodb to start as it needs to establish a connection)

# docker-compose -f mongo.yaml down
- goes through all the containers and shut them down aka stops them
- also removes the network, thus, on restarting it is going to recreate the network