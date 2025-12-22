Role Name
=========

This role is used to create VMs on a Proxmox server.
It uses template with cloud init see scripts folder to create a template VM

Requirements
------------

You need to have a Proxmox server running and a valid user with the right to create VMs.

Role Variables
--------------

You can see them in `defaults/main.yml` file.

Dependencies
------------

No dependencies for this role.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

GNU GPLv3

Author Information
------------------

MsterHuj <gabin.lanore@gmail.com>