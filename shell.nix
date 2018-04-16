{ pkgs ? import <nixpkgs> {} }:
with pkgs;

stdenv.mkDerivation {
  name = "buildkit-env";
  buildInputs = [
    # utilities
    git
    go
    docker
  ];
}
