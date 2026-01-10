{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./boot
      ./networking.nix
      ./packages.nix
      ./users
      ./services.nix
      ./flakes.nix
    ];

  system.stateVersion = "25.11";
}
