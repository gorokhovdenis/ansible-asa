#!/bin/sh
ansible-playbook roles/asa.yml -i hosts_asa --vault-password-file ./.asa_pass