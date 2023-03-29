{ pkgs ? import <nixpkgs> {} }:

with pkgs; {
  my-env = buildEnv {
    name = "my-env";
    paths = [
      nodejs
      git
      zsh
      jdk           # Java Development Kit for Java development
      maven         # Maven build tool
      jetbrains.idea-community  # IntelliJ Community Edition
      # Add more packages here
    ];
  };
}
