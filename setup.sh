#!/bin/bash
set -e

sudo apt -y install ansible
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.netcommon
ansible-galaxy collection install kubernetes.core
ansible-galaxy collection install ansible.posix