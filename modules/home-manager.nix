{ pkgs, ... }:

{
  targets.genericLinux.enable = true;
  programs.home-manager.enable = true;

  programs.bash = {
    enable = true;
  };

  home.sessionPath = [
    "$HOME/.nix-profile/bin"
    "$HOME/.local/bin"
    "$HOME/bin"
    "$HOME/.cargo/bin"
  ];

  programs.go = {
    enable = true;
  };

  home.shellAliases = {
    hms = "home-manager switch --flake ~/.config/home-manager";
  };

  home.packages = [
    pkgs.nixfmt-rfc-style
    pkgs.statix
    pkgs.deadnix
  ];
}
