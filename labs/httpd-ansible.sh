#!/bin/bash

ansible practice -m yum -a "name=httpd state=latest"
ansible practice -m service -a "name=httpd state=started enabled=true"
ansible practice -m user -a "name=anna"
ansible practice -m copy -a "src=/etc/hosts dest=/tmp/hosts"
