#!/bin/bash
ansible-playbook kvm_provision.yaml -K -e vm=podman-01 -e ip_addr=192.168.122.3

