{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Miguel Landaeta";
      user.email = "miguel@miguel.cc";
      aliases = {
        co = "checkout";
        br = "branch";
        ci = "commit";
      };
      safe.directory = "/etc/nixos/.git";
    };
  };
}
