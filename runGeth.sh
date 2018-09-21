#!/bin/sh
port=8545
#localhost, 8545
ufw deny $port;
ufw allow $port;
while true
do
        #sudo nohup js app.js > /dev/null
	sudo nohup geth --syncmode 'fast' --rpc --rpcapi 'personal,db,eth,net,web3,txpool' --rpcaddr '0.0.0.0' --datadir "/root/distribution-form/ethdata"
done

