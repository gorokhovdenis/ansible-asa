Cisco ASA Configuration Automation
=========

```sh role_asa.sh``` for running

**Rules should be put into ./roles/asa/tasks/add_acl.yml**

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

Playbook Example
----------------

```
---
- name: add objects
  asa_config:
    lines:
      - description SR-2404845
      - network-object host 195.82.136.8
      - network-object host 195.82.136.10
      - network-object host 195.82.136.11
      - network-object host 195.82.136.12
    parents: ['object-group network SKYPE-4-BUSINESS']
    provider: "{{ cli }}"

- name: add ACL
  asa_config:
    lines:
      - access-list {{ ifname }} extended permit ip any object-group SKYPE-4-BUSINESS
    provider: "{{ cli }}"
```
