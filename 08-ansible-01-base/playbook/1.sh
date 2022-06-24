#!/bin/bash
ansible-playbook infra.yml --ask-vault-password
wait 15
#ansible-playbook -v site.yml -i inventory/prod.yml
ansible-playbook -v site.yml -i inventory/prod.yml --ask-vault-password

docker stop ubuntu centos7 fedora
#docker rm ubuntu deb el centos7

