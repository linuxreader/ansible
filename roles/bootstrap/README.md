## Bootstrap a system to get it ready for Ansible  
Tasks include  
- Setting up Ansible user  
    - Add ansible user account  
    - Set up passwordless sudo  
    - Add control node ssh keys for access  

## Instructions  
Run the following command: 
`ansible-playbook -e target=addhostnamehere playbooks/bootstrap.yaml --ask-pass --ask-become-pass`  

- *target* is the variable to set the target host to.  
- Host must be resolable via DNS.  
- On Debian systems, the playbook must be ran twice due to a DNS issue. It will fail on installing sudo the first run through.   

You will then be promted for the root password of the target host:  
```bash
david@fedora:~/Ansible$ ansible-playbook -e target=podman-01 playbooks/bootstrap.yaml --ask-pass --ask-become-pass
SSH password: 
BECOME password[defaults to SSH password]: 
```
