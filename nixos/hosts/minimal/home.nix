{ config, pkgs, ... }:

{
  home.username = "miguel";
  home.homeDirectory = "/home/miguel";

  home.sessionVariables = {
    EDITOR = "vim";
  };

  home.packages = with pkgs; [
    ruby_4_0
  ];

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
    };
  };

  programs.bash = {
    enable = true;
    shellAliases = {
      xanadu = "echo xanadu";
    };
    initExtra = ''
      sns() {
        sudo nixos-rebuild switch --flake $1
      }
    '';
  };

  programs.vim.enable = true;
  programs.tmux.enable = true;

  home.stateVersion = "25.11";
}
