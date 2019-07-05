echo "Creating Docker Environment"
docker run -p 8080:80 -d cybershaolin/nginx

echo docker ps -a

echo "Connecting to the Docker Environment"
docker exec -it (docker ps -a) /bin/bash
