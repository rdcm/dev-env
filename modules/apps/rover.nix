{
  pkgs-unstable,
  ...
}:

{
  nixpkgs.config.allowUnfree = true;

  home.packages = [
    pkgs-unstable.jetbrains.rust-rover
  ];
}
