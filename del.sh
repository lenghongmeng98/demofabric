./permission.sh
rm -R ./artifact
rm -R ./config/ledger
rm -R ./ledger1
rm -R ./ledger2
rm -R ./basic.tar.gz
rm -R ./log.txt
rm -R ./crypto-config
sudo docker rm -f $(docker ps -aq)
sudo docker volume prune

