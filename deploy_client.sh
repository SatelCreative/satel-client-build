#!/bin/bash
CLIENT=$1
GEN_TYPE=$2

# echo "APP_NAME=${APP_NAME}, CLIENT=${CLIENT}"

echo "Build client"
if [[ $CLIENT != None ]]
then
    cd $CLIENT
    yarn install
    yarn lint
    if [[ $GEN_TYPE != None ]]
    then
        yarn gen 
    fi   
    yarn build  
fi  
