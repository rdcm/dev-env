{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Core
    go
    gotools # goimports, godoc etc.
    gopls # LSP-server

    # Lints & Formatters
    golangci-lint # Includes: staticcheck, errcheck etc.

    # Debugging
    delve # debugger

    # Utils
    gomodifytags # work with tags
    gotests # tests generation
    impl # fakes generations (for interfaces)
    mockgen # mocks generation

    # Optional
    air # hot reload
    goreleaser # build and release
  ];
}
