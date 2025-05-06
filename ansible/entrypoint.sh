#!/bin/bash
set -e

ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ''
sshpass -p "$SSH_PASSWORD" ssh-copy-id -o StrictHostKeyChecking=no root@managed1
sshpass -p "$SSH_PASSWORD" ssh-copy-id -o StrictHostKeyChecking=no root@managed2

exec bash