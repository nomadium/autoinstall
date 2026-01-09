{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    git
    bind
    file
  ];
}
