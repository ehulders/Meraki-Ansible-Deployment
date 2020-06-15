#!/bin/bash
cd playbooks/vars
find "$PWD" -type f 
cd ..
ansible-playbook deploy-branch-readyaml.yaml
