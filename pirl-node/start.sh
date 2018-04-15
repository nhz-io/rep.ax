#!/usr/bin/env bash

pirl --etherbase "$ETHERBASE" --rpc --rpcaddr 0.0.0.0 --rpccorsdomain * --rpcport 6588  --rpcapi "eth,net,web3"
