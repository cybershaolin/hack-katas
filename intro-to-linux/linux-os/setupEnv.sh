echo "Creating Docker Environment"

docker run -p 8080:80 -d cybershaolin/nginx

docker ps -a
