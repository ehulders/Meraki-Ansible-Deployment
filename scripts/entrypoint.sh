#!/bin/bash

cd playbooks/vars

for dir in */; do
    
   cd "$dir"
   variable=$(pwd)
   echo $variable
   mkdir deploy
   cp -r $variable/addressing.yaml deploy/addressing.yaml
   cp -r $variable/devices.yaml deploy/devices.yaml
   ls deploy
   cp ../../deploy-branch-readyaml.yaml deploy/deploy-branch-readyaml.yaml
   ansible-playbook ./deploy/deploy-branch-readyaml.yaml --extra-vars "auth=$auth org=$demo" -vvvv
   cd ../..
done
 
