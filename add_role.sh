#!/bin/bash

mkdir /etc/ansible/roles/$1/{tasks,files,defaults,templates} -p
touch /etc/ansible/roles/$1/{tasks,defaults}/main.yml
touch /etc/ansible/$1.yml
cat << EOF > /etc/ansible/$1.yml
---
- hosts:
#  remote_user:
#  sudo: yes
  roles:
    - { role: $1 }
EOF

