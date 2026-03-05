{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ruby_4_0
    talosctl
    kubectl
    k9s
  ];
}
