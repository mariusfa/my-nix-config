{ pkgs ? import <nixpkgs> {} }:

pkgs.buildEnv {
  name = "my-env";
  paths = [
    pkgs.nodejs
    pkgs.git
  ];
}
