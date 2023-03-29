# My Nix Configuration

This repository contains my personal Nix configuration for setting up a new Ubuntu installation and managing installed packages.

## Contents

- `config.nix`: A Nix expression that defines my environment and the packages I want to install.
- `setup-ubuntu.sh`: A shell script to install Nix, clone this repository, and set up the environment using `config.nix`.
- `update.sh`: A shell script to update Nix channels, install updated packages from `config.nix`, and clean up unused packages.

## Getting Started

1. Clone the repository and run the `setup-ubuntu.sh` script:

```bash
curl -L https://raw.githubusercontent.com/mariusfa/my-nix-config/main/setup-ubuntu.sh | sh
```

2. Close and reopen your terminal, or run `source ~/.bashrc` (or `source ~/.zshrc` for Zsh) to apply the changes made by the script.

## Updating Packages

To update the packages defined in your `config.nix` file and clean up any unused packages, run the `update.sh` script:

```bash
./update.sh
```

This script will update the Nix channels, install the updated packages from your `config.nix` file, and then run the garbage collector to clean up any unused packages.
