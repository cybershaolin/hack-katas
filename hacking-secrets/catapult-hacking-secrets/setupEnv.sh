echo "Creating Cybershaolin Learning Environment"
docker run -dit -p 80:80 cybershaolin/hacking-secrets:training_kwoon
docker ps -a
docker exec -it $(docker ps -aq) /bin/bash
#echo "Finding out Container ID"
#docker ps --format "{{.ID}}"

#clear
