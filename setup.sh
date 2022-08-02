#!/bin/bash
set -e

sudo apt -y install ansible 
ansible-galaxy collection install \
  community.general \
  ansible.netcommon \
  kubernetes.core \
  ansible.posix \
  cloud.common \
  community.kubernetes \
  community.okd