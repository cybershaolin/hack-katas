echo "Creating Cybershaolin Learning Environment"
docker run -dit -p 8099:80 cybershaolin/hacking-humans:social
docker ps -a
docker exec -it $(docker ps -aq) /bin/bash
cd set
./setoolkit

#echo "Finding out Container ID"
#docker ps --format "{{.ID}}"
#docker ps -aq

#clear
