#!/usr/bin/env bash

docker run --rm -it -v $(pwd):/ansible/playbooks ansible-playbook -i ./inventories/hosts.yml prerequisites.yml --extra-vars "@./inventories/group_vars/vars.yml"
