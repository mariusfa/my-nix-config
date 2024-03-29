{ pkgs ? import <nixpkgs> {} }:

with pkgs; {
  my-env = buildEnv {
    name = "my-env";
    paths = [
      nodejs
      git
      zsh
      jdk21        # Java Development Kit for Java development
      maven         # Maven build tool
      rustc
      cargo
      jetbrains.idea-community  # IntelliJ Community Edition
      gradle
      # Add more packages here
    ];
  };
}
