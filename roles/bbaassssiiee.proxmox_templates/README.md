proxmox_templates
=========

Create Proxmox 'templates' (VM base images) on local-lvm.

Requirements
------------

A running ProxMox instance or cluster.

Role Variables
--------------

`defaults/main.yml` has a list of images with their properties, one for Ubuntu, one for Debian.

By selecting `present` or `absent` you can manage the presence of OS images and VM templates in Proxmox.
As an example for Ubuntu these remove the image and VM template:
```
    image_state_desired: absent
    vm_state_desired: absent
```
In contrast these download and customize the image for Debian, and create a VM template in Proxmox.
```
    image_state_desired: absent
    vm_state_desired: absent
```

Defaults can be overidden in group_vars or host_vars.

```yaml
# proxmox_templates/defaults/main.yml
base_path: '/root'

vm_templates:
  - image_name: 'noble-server-cloudimg-amd64.img'
    image_url: 'https://cloud-images.ubuntu.com/noble/current/noble-server-cloudimg-amd64.img'
    image_state_desired: absent
    vm_state_desired: absent
    vm_id: 100
    vm_name: 'ubuntu-noble-cloudinit-template'
    vm_memory: 2048
    vm_cores: 2
    vm_bridge: 'vmbr1'
    vm_storage: 'local-lvm'
  - image_name: 'debian-12-genericcloud-amd64-20240901-1857.qcow2'
    image_url: 'https://cloud.debian.org/images/cloud/bookworm/20240901-1857/debian-12-genericcloud-amd64-20240901-1857.qcow2'
    image_state_desired: present
    vm_state_desired: present
    vm_id: 101
    vm_name: 'debian-bookworm-cloudinit-template'
    vm_memory: 2048
    vm_cores: 2
    vm_bridge: 'vmbr1'
    vm_storage: 'local-lvm'
```

Dependencies
------------

Collection: `community.general`.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: pve
      roles:
         - { role: bbaassssiie.proxmox_templates }

License
-------

MIT

Author Information
------------------

http://github.com/bbaassssiiee
