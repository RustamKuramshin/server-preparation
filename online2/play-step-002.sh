#!/usr/bin/env bash

docker run --rm -it -v $(pwd):/ansible/playbooks ansible-playbook -i ./inventories/hosts.yml provisioning.yml --extra-vars "@./inventories/group_vars/vars.yml"
