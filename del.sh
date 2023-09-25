./permission.sh
rm -R ./artifact
rm -R ./config/ledger
rm -R ./ledgers
rm -R ./basic.tar.gz
rm -R ./log.txt
rm -R ./crypto-config
sudo docker rm -f $(docker ps -aq)
sudo docker volume prune

