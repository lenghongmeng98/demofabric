./permission

./create_network.sh

./create_key_material.sh
./1.create_genesis_block.sh
./2.create_channelTX.sh
./3.create_anchor_peer.sh
docker compose up -d
./5.channel_peer.sh

sleep 3s

./9.join_channel.sh
./10.update_peer.sh
./11.deploy_chain_code.sh


