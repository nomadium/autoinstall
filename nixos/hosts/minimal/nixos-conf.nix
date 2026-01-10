{ config, lib, pkgs, self, ... }:

{
  environment.etc."nixos".source = self;
}
