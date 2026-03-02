{ pkgs, ... }:

let
  hpkgs = pkgs.haskell.packages.ghc967;
in
{
  home.packages = with pkgs; [
    hpkgs.ghc
    hpkgs.haskell-language-server
    cabal-install
    ormolu
    hlint
  ];
}
