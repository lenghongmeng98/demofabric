#delete container if it exist for org 1
docker container stop couchdb
docker container rm -f couchdb

#delete container if it exist for org 2
docker container stop couchdb2
docker container rm -f couchdb2

#start two database container
docker run -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb 5984:5984 -d couchdb:3.1.1 --restart unless-stopped
docker run -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password --name=couchdb2 5985:5984 -d couchdb:3.1.1 --restart unless-stopped

sleep 3s

curl localhost:5984
curl localhost:5985