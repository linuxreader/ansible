#!/bin/bash
ansible-playbook kvm_provision.yaml -e vm=podman-01 -e ip_addr=192.168.122.3
ansible-playbook kvm_provision.yaml -e vm=web-01 -e ip_addr=192.168.122.5

