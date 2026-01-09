{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vdb";
  # https://nixos.wiki/wiki/Serial_Console
  boot.loader.grub.extraConfig = "
    serial --speed=115200 --unit=0 --word=8 --parity=no --stop=1
    terminal_input serial
    terminal_output serial
  ";
  boot.kernelParams = [ "console=ttyS0,115200n8" ];

  networking.networkmanager.enable = true;

  environment.systemPackages = with pkgs; [
    vim
    git
    bind
    file
  ];

  users.users.miguel = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
    shell = pkgs.bash;
    hashedPassword = "$6$AsTOJpwTSLO/njOS$uovfoCmMk5oX27igKI2PRlfFB/Wukz.lacJjrMHixPRUmytsng.m4pzvQmIGB2xD0agc1CjhahcTJhNAT/vxa0";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMNcUSkx11fiGy0VjQD1vr+6kWmXdXxB88lG/6OycxDe somekey"
    ];
  };

  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };

  services.openssh.enable = true;

  system.stateVersion = "25.11";

  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
  };
}
