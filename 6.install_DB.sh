#delete container if it exist for org 1
sudo docker container stop couchdb
sudo docker container rm -f couchdb

#delete container if it exist for org 2
sudo docker container stop couchdb2
sudo docker container rm -f couchdb2

#start two database container
sudo docker run -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb -p 5984:5984 -d couchdb:3.1.1 --restart unless-stopped
sudo docker run -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb2 -p 5985:5984 -d couchdb:3.1.1 --restart unless-stopped

sleep 3s

curl localhost:5984
curl localhost:5985