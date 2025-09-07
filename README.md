# Install pacman support
ansible-galaxy collection install community.general
# Install yay support
ansible-galaxy collection install kewlfft.aur


# Arch linux install with ansible provisioning
sudo ansible-playbook playbook.yml -K --tags zsh