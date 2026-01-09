{ config, pkgs, home-manager, ... }:

{
  imports = [
    home-manager.nixosModules.home-manager
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    users.miguel = import ./home.nix;
  };
}
