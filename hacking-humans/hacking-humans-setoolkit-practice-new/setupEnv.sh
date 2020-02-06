echo "Creating Cybershaolin Learning Environment."

docker run --name CyberShaolin_Skyward -d -p 80:80 cybershaolin/nginx:skyward

docker run --name CyberShaolin_dockerSET -dit -p 8099:80 cybershaolin/hacking-humans:social
docker ps -a --filter "name=CyberShaolin_dockerSET"
docker exec -it $(docker ps -aq --filter "name=CyberShaolin_dockerSET") /bin/bash
cd set
./setoolkit

#echo "Finding out Container ID"
#docker ps --format "{{.ID}}"
#docker ps -aq

#clear
