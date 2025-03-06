# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{
  inputs,
  outputs,
  lib,
  config,
  pkgs,
  ...
}: {
  # You can import other home-manager modules here
  imports = [
    ./pkgs.nix
    ./pkgs/git.nix
    ./wezterm.nix
    ./wallpaper/waypaper.nix
    ./shell/fish.nix
    ./shell/starship.nix
    ./stylix.nix
    ./yazi.nix
   #./hyprpanel.nix
    # If you want to use modules your own flake exports (from modules/home-manager):
    # outputs.homeManagerModules.example

    # Or modules exported from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModules.default

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
  ];
     home.sessionVariables = {
    EDITOR = "nvim";
    TERM = "${pkgs.wezterm}/bin/wezterm";
    SHELL = "/home/rsh.nix-profile/bin/fish";
  };

  nixpkgs = {
    # You can add overlays here
   # overlays = [
      # Add overlays your own flake exports (from overlays and pkgs dir):
    #  outputs.overlays.additions
     # outputs.overlays.modifications
     # outputs.overlays.unstable-packages

      # You can also add overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    #];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
    };
  };

  # TODO: Set your username
  home = {
    username = "rsh";
    homeDirectory = "/home/rsh";
  };

  # Add stuff for your user as you see fit:
   programs.neovim.enable = true;
  # wayland.windowManager.hyprland.enable = true;
   home.packages = with pkgs; [ 
fish
fzf
vim
fastfetch
 ];
#home-manager.useGlobalPkgs = true;
#home-manager.useUserPackages = true;

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.11";
}
