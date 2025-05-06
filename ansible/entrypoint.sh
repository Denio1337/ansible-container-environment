#!/bin/bash
set -e

# Генерация и регистрация ключа на управляемых узлах
ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ''
sshpass -p "$SSH_PASSWORD" ssh-copy-id -o StrictHostKeyChecking=no root@managed1
sshpass -p "$SSH_PASSWORD" ssh-copy-id -o StrictHostKeyChecking=no root@managed2

# Копирование конфига Ansible по дефолтному пути
cp cfg /etc/ansible/ansible.cfg

exec bash