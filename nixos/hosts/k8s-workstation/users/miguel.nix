{ config, lib, pkgs, ... }:

{
  users.users.miguel = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    packages = with pkgs; [
      tree
    ];
    shell = pkgs.bash;
    hashedPassword = "$6$AsTOJpwTSLO/njOS$uovfoCmMk5oX27igKI2PRlfFB/Wukz.lacJjrMHixPRUmytsng.m4pzvQmIGB2xD0agc1CjhahcTJhNAT/vxa0";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG/wsAto0fPw8EYU3viWowcMcjn6xZTidiWmhSi+sTIV somekey"
    ];
  };
}
