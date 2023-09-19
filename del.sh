rm -R ./artifact
rm -R ./config/ledger
rm -R ./ledger
rm -R ./ledger2
rm -R ./crypto-config
sudo docker rm -f $(docker ps -aq)
sudo docker volume prune