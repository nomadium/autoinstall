{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./grub.nix
      ./serial.nix
    ];
}
