{ pkgs, ... }:

{
  home.packages = [
    pkgs.curl
    pkgs.gnupg
    pkgs.cmake
    pkgs.pkg-config
    pkgs.jq
    pkgs.patchelf
  ];
}
