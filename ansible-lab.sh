#!/bin/bash
ansible-playbook kvm_provision.yaml -e vm=podman-01 -e ip_addr=192.168.122.3 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:01
ansible-playbook kvm_provision.yaml -e vm=podman-02 -e ip_addr=192.168.122.4 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:02
ansible-playbook kvm_provision.yaml -e vm=ansible1 -e ip_addr=192.168.122.5 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:03
ansible-playbook kvm_provision.yaml -e vm=ansible2 -e ip_addr=192.168.122.6 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:04
ansible-playbook kvm_provision.yaml -e vm=ansible3 -e ip_addr=192.168.122.7 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:05
