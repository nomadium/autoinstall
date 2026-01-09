{ config, pkgs, ... }:

{
  imports =
    [
      ./home/miguel.nix
      ./home/env-vars.nix
      ./home/packages.nix
      ./home/programs
    ];

  home.stateVersion = "25.11";
}
