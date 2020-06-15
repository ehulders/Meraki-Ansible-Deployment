#!/bin/bash

cd vars

for dir in */; do
    
   cd "$dir"
   variable=$(pwd)
   echo $variable
   mkdir $dir
   cp -r $variable $dir
   ls dir
   cp ../../deploy-branch-readyaml.yaml $dir/deploy-branch-readyaml.yaml
   ansible-playbook deploy-branch-readyaml.yaml
   cd ../..
done
