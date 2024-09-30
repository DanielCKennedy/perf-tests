#!/usr/bin/env bash

set -x

echo "Running cl2 for $CONFIG"
ENABLE_EXEC_SERVICE=false ./clusterloader --kubeconfig=$KUBECONFIG \
--testconfig $CONFIG \
--nodes=100 --provider=eks --alsologtostderr --v=2 \
--port $PORT

echo ""
echo "Sleeping for 10m..."
sleep 10m
echo ""

echo "Running cl2 for $CONFIG"
ENABLE_EXEC_SERVICE=false ./clusterloader --kubeconfig=$KUBECONFIG \
--testconfig $CONFIG \
--nodes=100 --provider=eks --alsologtostderr --v=2 \
--port $PORT

echo ""
echo "Sleeping for 10m..."
sleep 10m
echo ""

echo "Running cl2 for $CONFIG"
ENABLE_EXEC_SERVICE=false ./clusterloader --kubeconfig=$KUBECONFIG \
--testconfig $CONFIG \
--nodes=100 --provider=eks --alsologtostderr --v=2 \
--port $PORT



