{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./boot
      ./networking.nix
      ./packages.nix
      ./users
      ./services.nix
      ./flakes.nix
    ];

  system.stateVersion = "25.11";
}
