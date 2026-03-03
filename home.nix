{ ... }:

{
  imports = [
    # home manager
    ./modules/home-manager.nix

    # packages
    ./modules/packages/dev-env.nix
    ./modules/packages/haskell.nix
    ./modules/packages/golang.nix
    ./modules/packages/rust.nix
    ./modules/packages/system-utils.nix
  ];

  home.stateVersion = "25.11";
}
