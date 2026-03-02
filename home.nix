{ ... }:

{
  imports = [
    # home manager
    ./modules/home-manager.nix

    # apps
    ./modules/apps/vscode.nix
    ./modules/apps/rover.nix
    ./modules/apps/goland.nix
    ./modules/apps/postman.nix

    ./modules/apps/mattermost.nix
    ./modules/apps/telegram.nix
    ./modules/apps/qflipper.nix

    # packages
    ./modules/packages/dev-env.nix
    ./modules/packages/haskell.nix
    ./modules/packages/golang.nix
    ./modules/packages/rust.nix
    ./modules/packages/system-utils.nix
  ];

  home.stateVersion = "25.11";
}
