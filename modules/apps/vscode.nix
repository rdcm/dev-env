{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions =
        with pkgs.vscode-extensions;
        [
          rust-lang.rust-analyzer
          tamasfe.even-better-toml
          bbenoist.nix
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "file-and-folder-icons";
            publisher = "nextbook";
            version = "1.0.4";
            sha256 = "sha256-PzEiRmY1Mt3BNRpPiwk9vFW+qIKhQ3jGwjg2hwrNRPc=";
          }
          {
            name = "jinja";
            publisher = "wholroyd";
            version = "0.0.8";
            sha256 = "sha256-kU2uMIBChHOE76npA9u1CSJCMPHK0hj/2vasVTx9ydI=";
          }
          {
            name = "linux-desktop-file";
            publisher = "nico-castell";
            version = "0.0.21";
            sha256 = "sha256-4qy+2Tg9g0/9D+MNvLSgWUE8sc5itsC/pJ9hcfxyVzQ=";
          }
          {
            name = "makefile-tools";
            publisher = "ms-vscode";
            version = "0.12.17";
            sha256 = "sha256-chHyYzKNEpyYMQX14pbQ/d9WKC+1QWtm8iKe6M8ZWWI=";
          }
          {
            name = "claude-code";
            publisher = "anthropic";
            version = "2.1.49";
            sha256 = "sha256-9WwA1TUM/h8kLoZV/ukh/4s3w9DnJ/cVAxypz4jlj6A=";
          }
        ];
      userSettings = {
        "security.workspace.trust.untrustedFiles" = "open";
        "workbench.iconTheme" = "file-icons";
        "files.autoSave" = "afterDelay";
        "claudeCode.preferredLocation" = "panel";
        "git.enableSmartCommit" = true;
        "explorer.confirmDragAndDrop" = false;
      };
    };
  };
}
