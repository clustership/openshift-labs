#!/usr/bin/env ansible-playbook 
---
# If you like to play: ./ansible/create.yml --skip-tags public_dns,letsencrypt
- hosts: localhost
  connection: local
  # gather_facts true because we need the public ip address
  gather_facts: true
#  become: true
#  vars_files:
#  - ../cluster.yml

  tasks:
  - name: Configure hugepages
    import_role: 
      name: ocp4-hugepages-config
      tasks_from: main.yml
