{
  pkgs,
  fenix,
  system,
  ...
}:

let
  rust-toolchain = fenix.packages.${system}.combine [
    fenix.packages.${system}.stable.rustc
    fenix.packages.${system}.stable.cargo
    fenix.packages.${system}.stable.rustfmt
    fenix.packages.${system}.stable.clippy
    fenix.packages.${system}.stable.llvm-tools-preview
  ];
in
{
  home.packages = [
    rust-toolchain
    pkgs.sqlx-cli
    pkgs.cargo-deny
    pkgs.cargo-edit
    pkgs.cargo-llvm-cov
    pkgs.cargo-nextest
    pkgs.sccache
    pkgs.cargo-sort
    pkgs.llvmPackages.libclang
  ];

  home.sessionVariables = {
    RUSTC_WRAPPER = "sccache";
    LIBCLANG_PATH = "${pkgs.llvmPackages.libclang.lib}/lib";
  };
}
