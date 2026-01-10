{ config, pkgs, ... }:

{
  programs.bash = {
    enable = true;
    shellAliases = {
      doas = "sudo";
      print-sshft = "ssh-keygen -l -f /etc/ssh/ssh_host_ed25519_key.pub";
    };
    initExtra = ''
      sns() {
        sudo nixos-rebuild switch --flake $1
      }
    '';
  };
}
