Cisco ASA Configuration Automation
=========

```ansible-playbook roles/asa.yml -i inventory/hosts_asa --vault-password-file ./.asa_pass``` for running

**Rules should be put into vars**

```
asa_objects:
  - "description SR-2404845"
  - "network-object host 195.82.136.8"
  - "network-object host 195.82.136.10"
  - "network-object host 195.82.136.11"
  - "network-object host 195.82.136.12"

object_group_name: "object-group network SKYPE-4-BUSINESS"
```

Requirements
------------

Linux & Ansible required

Role Variables
--------------

Variables hosted in group_vars. 

```
ifname: inside
cli:
  username: "ciscoasa"
  password: "{{ password }}"
  authorize: yes
  auth_pass: "{{ auth_pass }}"
```
