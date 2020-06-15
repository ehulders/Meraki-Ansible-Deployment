#!/bin/bash

cd playbooks/vars

for dir in */; do
    
   cd "$dir"
   variable=$(pwd)
   echo $variable
   mkdir deploy
   cp -r $variable/addresses.yaml deploy/addresses.yaml
   cp -r $variable/devices.yaml deploy/devices.yaml
   ls deploy
   cp ../../deploy-branch-readyaml.yaml deploy/deploy-branch-readyaml.yaml
   ansible-playbook ./deploy/deploy-branch-readyaml.yaml --extra-vars "auth=b9cfb41fbf828497f950d6d8c4ead2dd29cc715c org=Demo" -vvvv
   cd ..
done
 
