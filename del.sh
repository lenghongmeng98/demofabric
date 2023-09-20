rm -R ./artifact
rm -R ./config/ledger
rm -R ./ledger
rm -R ./ledger2
rm -R ./basic.tar.gz
rm -R ./log.txt
rm -R ./crypto-config
sudo docker rm -f $(docker ps -aq)
sudo docker volume prune

./create_key_material.sh
./1.create_genesis_block.sh
./2.create_channelTX.sh
./3.create_anchor_peer.sh
./4.upOrderer.sh