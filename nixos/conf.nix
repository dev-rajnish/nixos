{
  config,
  pkgs,
  inputs,
  lib,
  outputs,
  ...
}: {
  boot.loader.systemd-boot.enable = true;
  services.logind.powerKey = "ignore";
  hardware.uinput.enable = true;
  services.udev.extraRules = ''KERNEL=="uinput", OWNER="rsh",MODE="0600" '';

  boot.loader.efi.canTouchEfiVariables = true;
  networking.networkmanager.enable = true;
  time.timeZone = "Asia/Kolkata";
  #i18n.defaultLocale = en_US.utf8;
  # Enable automatic login for the user.
  services.getty.autologinUser = "rsh";
}
