#!/usr/bin/env sh

pirl --etherbase "$ETHERBASE" --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --rpcport 6588  --rpcapi "eth,net,web3"
