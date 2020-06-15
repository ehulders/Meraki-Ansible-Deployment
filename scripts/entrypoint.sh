#!/bin/bash
cd playbooks/vars
find "$PWD" -type f 
cd ..
ansible-playbook ./deploy-branch-readyaml.yaml --extra-vars "auth_key=$auth organisation=Demo"
