#!/bin/bash
ansible-playbook kvm_provision.yaml -e vm=ansible-control -e ip_addr=192.168.122.3 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:01 &&
ansible-playbook playbooks/bootstrap.yaml   -e target=ansible-control   -e ansible_user=root

ansible-playbook kvm_provision.yaml -e vm=ansible2 -e ip_addr=192.168.122.4 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:02 &&
ansible-playbook playbooks/bootstrap.yaml   -e target=ansible2   -e ansible_user=root

ansible-playbook kvm_provision.yaml -e vm=ansible3 -e ip_addr=192.168.122.5 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:03 &&
ansible-playbook playbooks/bootstrap.yaml   -e target=ansible3   -e ansible_user=root

ansible-playbook kvm_provision.yaml -e vm=ansible4 -e ip_addr=192.168.122.6 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:04 &&
ansible-playbook playbooks/bootstrap.yaml   -e target=ansible4   -e ansible_user=root

ansible-playbook kvm_provision.yaml -e vm=ansible5 -e ip_addr=192.168.122.7 -e disk_size=31 -e vm_mac=52:54:00:a0:b0:05 &&
ansible-playbook playbooks/bootstrap.yaml   -e target=ansible5   -e ansible_user=root

