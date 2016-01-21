#!/bin/bash

# generate a random hash
ID=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 5 | head -n 1)

# build minecraft.yaml and minecraft-service.yaml
sed -e "
s,%ID%,$ID,g;
" minecraft-template.yaml > minecraft.yaml

sed -e "
s,%ID%,$ID,g;
" minecraft-service-template.yaml > minecraft-service.yaml

# start the services
kubectl create -f minecraft.yaml
kubectl create -f minecraft-service.yaml

# cleanup
rm minecraft.yaml minecraft-service.yaml
