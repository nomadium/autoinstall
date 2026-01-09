{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      xanadu = "echo xanadu";
    };
    initExtra = ''
      sns() {
        sudo nixos-rebuild switch --flake $1
      }
    '';
  };
}
