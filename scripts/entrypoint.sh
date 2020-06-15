#!/bin/bash
cd playbooks/vars
find "$PWD" -type f 
ansible-playbook playbooks/deploy-branch-readyaml.yaml
