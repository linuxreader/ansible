Role Name
=========
Base config for Linux systems. Has been tested and working on AlmaLinux 10.

Functions
- NTP setup
- Cockpit setup
- Setting hostname
- Setting timezone
- History timestamps
- DNF tuning
- QEMU agent
- ldap auth


Requirements
------------

Role Variables
--------------
    ad_domain: 
    ad_user: 
    ad_admin_groups: 
    ad_user_groups:
    ad_integration_realm: 
    ad_integration_ou: 
    ad_integration_manage_sudo: true
    ad_integration_enable: true
    timezone: America/Phoenix
    timesync_ntp_servers:
      - hostname: pool.ntp.org
        iburst: true

You can override ad_admin_groups for adding groups with sudo access.
ad_user_groups will me normal users with no sudo. These both support a list value such as:

```yaml
  vars:
    ad_admin_groups:
       - "domain users"
       - it 
```


Example Playbook
----------------

```yaml
---
- name: Configure test-vm2
  hosts: test-vm2
  become: yes
  vars_files:
    - secrets.yaml
  vars:
    ad_admin_groups:
       - it
    ad_user_groups:
       - "domain users"
       - dev 
  roles:
    - base-config
```

### RHEL System Roles

RHEL System Roles are added to meta/main.yaml as dependencies. This set up timesync and cockpit:
```yaml
dependencies:
  - role: rhel-system-roles.timesync
  - role: rhel-system-roles.cockpit
```

### DNF Automatic

The default variables for automatic updates are as follows:  
```yaml
    dnf_automatic:
      day_of_week: Friday
      time: "21:00:00"
      randomized_delay: 0
      email_to: mail@example.com
      active: true
```

day_of_week variable must be spelled out with the full name of the day. You can also toggle automatic updates on or off with the active variable using true or false.
