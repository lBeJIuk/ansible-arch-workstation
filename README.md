# Install pacman support
ansible-galaxy collection install community.general

# Arch linux install with ansible provisioning

sudo ansible-playbook playbook.yml -K --tags zsh
