{ stdenv, lib, pkgs, buildGoPackage }:

buildGoPackage rec {
  name = "buildkit-${version}";
  version = "preview";

  goPackagePath = "github.com/moby/buildkit";
  subPackages = [ "cmd/buildkitd" "cmd/buildctl" ];
  buildFlags = [ "-tags seccomp" "-tags cgo" "-tags netgo" "-tags static_build" ];
  /*buildFlagsArray = ''
    -ldflags=
    -w -extldflags -static
  '';*/

  src = ./.;

  meta = {
    description = "toolkit for converting source code to build artifacts in an efficient, expressive and repeatable manner";
  };
}
