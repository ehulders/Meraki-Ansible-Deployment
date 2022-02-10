#!/bin/bash

cd playbooks/vars

for dir in */; do
   cd "$dir"
   path=$(pwd)
   mkdir deploy
   #cp -r $path/addresses.yaml deploy/addresses.yaml
   #cp -r $path/devices.yaml deploy/devices.yaml
   #cp -r $path/switches.yaml deploy/switches.yaml
   ls deploy
   #cp ../../deploy-branch-readyaml.yaml deploy/deploy-branch-readyaml.yaml
   #ansible-playbook ./deploy/deploy-branch-readyaml.yaml --extra-vars "auth=$auth org='Cisco Systems, Inc.'"
   cp ../../update-switch.yaml deploy/update-switch.yaml
   #ansible-playbook ./deploy/update-switch.yaml --extra-vars "auth=$auth org='Cisco Systems, Inc.'"
   cd ..
done