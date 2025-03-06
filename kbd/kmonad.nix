{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
kmonad
];

services.kmonad = {
  enable = true;
  package = pkgs.kmonad;
};

  #kmonad
 systemd.services.kmonad = {
    enable = true;
    description = "kmonad";
    after = ["network.target"];
    wantedBy = ["default.target"];

   serviceConfig = {
      ExecStart = "/run/current-system/sw/bin/kmonad  /home/rsh/.config/kmonad/config.kbd";
      Restart = "always";
      User = "rsh";
  };
};
}
