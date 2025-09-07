#!/bin/bash

ansible-playbook playbook.yml -K --tags aur_apps \
  --tags sublime \
  --tags zsh \
  --tags vim \
  --tags docker \
  --tags plasma \
  --tags ssh \
  --tags kubernetes \
  --tags tmuxinator \
  --tags remmina \
  --tags logid \
  --tags firewall \
  --tags yubikey \
  --tags syncthing \
  --tags system