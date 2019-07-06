echo "Creating Docker Environment"
docker run -p 8080:80 -d cybershaolin/linux-cmds:hackercise

echo "Finding out Container ID"
docker ps --format "{{.ID}}"

echo "Connecting to the Docker Container"
docker exec -it $(docker ps --format "{{.ID}}") /bin/bash

clear
