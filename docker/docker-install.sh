#!bin/bash
# Run the following command to uninstall all conflicting packages (previously installed docker)
# for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages:
sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

# Remove images,  containers, volun=mes or custom configurations
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh --dry-run
