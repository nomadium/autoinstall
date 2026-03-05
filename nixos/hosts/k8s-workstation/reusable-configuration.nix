{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./boot/serial.nix
      ./networking.nix
      ./packages.nix
      ./users
      ./services.nix
      ./flakes.nix
      ./nixos-conf.nix
    ];
}
