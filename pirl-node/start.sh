#!/usr/bin/env sh

pirl --etherbase "$ETHERBASE" --rpc --rpcaddr 0.0.0.0 --rpccorsdomain "*" --rpcvhosts "*" --rpcport 6588  --rpcapi "eth,net,web3" --dashboard --dashboard.addr 0.0.0.0 --dashboard.host 8080
