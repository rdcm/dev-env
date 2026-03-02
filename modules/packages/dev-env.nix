{ pkgs, ... }:

{
  home.packages = [
    pkgs.gnumake
    pkgs.kubectl
    pkgs.kubernetes-helm
    pkgs.kube-linter
    pkgs.postgresql
    pkgs.clickhouse
    pkgs.minio-client
    pkgs.uv
  ];
}
