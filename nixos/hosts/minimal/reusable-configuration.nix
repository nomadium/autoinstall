{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./networking.nix
      ./packages.nix
      ./users
      ./services.nix
      ./flakes.nix
      ./nixos-conf.nix
    ];
}
