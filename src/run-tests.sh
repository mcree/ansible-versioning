#!/bin/bash
set -e
mkdir -p /project
cp -r . /project
cd /project

git config --global user.email "test@example.com"
git config --global user.name "Ansible User"

git init
git add --all
git commit -m "initial commit"
git log -n 1 --pretty=format:'%ai' -- config1-playbook.yml


export ANSIBLE_HOST_KEY_CHECKING=False
#ansible -i inventory all -m command -a hostname
ansible-playbook -i inventory config1-playbook.yml

#git clone http://git/test.git

