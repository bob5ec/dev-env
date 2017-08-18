# dev-env
Current Problem: kitchen-docker assumes that the new spaned docker container is reached via ssh on localhost. Since we are in a container this is not the case.
Changing socket and DOCKER_HOST might help. But why is ssh used? docker exec should do the job much better
