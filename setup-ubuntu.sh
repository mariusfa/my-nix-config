#!/bin/sh

# Install Nix
curl -L https://nixos.org/nix/install | sh

# Load Nix environment (needed for the current shell session)
. $HOME/.nix-profile/etc/profile.d/nix.sh

# Clone your configuration repository
git clone https://github.com/your-username/your-nix-config-repo.git

# Enter the cloned repository
cd your-nix-config-repo

# Install your environment from config.nix
nix-env -f config.nix -iA my-env

# You may want to add any additional setup commands here, e.g., changing the shell to Zsh, etc.
