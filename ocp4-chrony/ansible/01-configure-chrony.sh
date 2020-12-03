#!/usr/bin/env ansible-playbook
---
- hosts: localhost
  vars:
    cluster_name: ai-bm-demo
    public_domain: clustership.com
    k8s_validate_certs: True
    ntp_server: 192.168.70.1
  tasks:
  - import_role:
      name: ocp4-chrony
      tasks_from: main.yml
