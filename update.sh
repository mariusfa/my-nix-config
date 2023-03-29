#!/bin/sh

# Update the Nix channels
nix-channel --update

# Install the updated packages from config.nix
nix-env -f config.nix -iA my-env

# Run the garbage collector to remove unused packages
nix-collect-garbage -d
