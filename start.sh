#!/bin/bash
set -vx
mkdir $HOME/.rinkeby
/root/go-ethereum/build/bin/geth --datadir=$HOME/.rinkeby init genesis_block.json 

cat genesis_block.json

/root/go-ethereum/build/bin/geth --rpcapi "admin,db,eth,debug,miner,net,shh,txpool,personal,web3" --rpc --rpcaddr "0.0.0.0" --rpccorsdomain "*" --networkid=4 --datadir=$HOME/.rinkeby --cache=512 --bootnodes=enode://a24ac7c5484ef4ed0c5eb2d36620ba4e4aa13b8c84684e1b4aab0cebea2ae45cb4d375b77eab56516d34bfbd3c1a833fc51296ff084b770b94fb9028c4d25ccf@52.169.42.101:30303 



