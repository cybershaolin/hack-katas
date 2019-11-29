echo "Creating Cybershaolin Learning Environment"
docker run -p 8099:80 -d cybershaolin/hacking-secrets:hackercise_noAVX
docker ps -a
docker exec -it $(docker ps -aq) /bin/bash
#echo "Finding out Container ID"
#docker ps --format "{{.ID}}"
#docker ps -aq

#clear
