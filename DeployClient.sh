#!/bin/bash

echo "Build client"
cd $CLIENT_DIR

yarn install
yarn lint

if [[ -n $GEN_TYPE ]]
then
    yarn gen 
fi   

yarn build  
