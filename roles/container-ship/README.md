Role Name
=========
Set up server to run rootless containers under the seal user with uid 11111

Requirements
------------
Tested on AlmaLinux 10. Should work with any RHEL 8+ based server though. 

Role Variables
--------------
These can be overridden if needed but are the current standards for PSI container hosts:

podman_user: seal
podman_user_uid: 11111

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

Author Information
------------------
POC: David Thomas
