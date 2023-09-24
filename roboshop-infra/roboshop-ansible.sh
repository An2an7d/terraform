#!/bin/bash

instances=("mongodb" "redis" "mysql" "rabbitmq" "catalogue" "cart" "user" "shipping" "payment" "web")
yum install ansible -y
git clone https://github.com/An2an7d/ansible-roboshop-roles.git
cd ansible-roboshop-roles

for i in "${instances[@]}"
do
    ansible-playbook -i inventory -e ansible_user=centos -e ansible_password=DevOps321 -e component=$i main.yaml
done