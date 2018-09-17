#!/bin/sh
port=8080
#ufw deny $port;
while true
do
        #sudo nohup js app.js > /dev/null
	sudo nohup geth --syncmode 'fast' --rpc --rpcaddr 'localhost' --rpcport $port --rpcapi 'personal,db,eth,net,web3,txpool' --datadir "/root/distribution-form/ethdata"
done

