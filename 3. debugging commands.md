# docker logs <container id>
- generates the "logs of the container" (log messages or output that the application generates while running inside the container)

# docker logs <container name>
- generates the logs of the container

# docker exec -it <container id> /bin/bash
- used to get the terminal aka shell aka CLI (command line interface) of the running docker container
- "it" is the interactive terminal
- after execution of this command, we get inside the container as a user
- in order to exit the terminal, simply write "exit"
- if container doesn't have "bash" then we can also do "/bin/sh" 

# docker exec -it <container name> /bin/bash