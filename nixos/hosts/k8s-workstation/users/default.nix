{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./miguel.nix
    ];

  security.sudo = {
    enable = true;
    wheelNeedsPassword = false;
  };
}
