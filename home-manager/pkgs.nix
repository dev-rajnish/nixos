{config, pkgs, nixpkgs, ...}:

{
  home.packages = with pkgs; [
#                                       ╭╮
#                                       ││
   #yazi
   #pcmanfm
   #base16-schemes
   firefox
   #wofi
   bluez
   cava
   hyprsunset
   hypridle
   rofi-wayland
   htop
   xfce.thunar
   satty
   #qiv
   #googleearth-pro
   #tuxpaint
   ironbar
   polkit_gnome
   hyprpolkitagent
   cmd-polkit
   polkit
   waybar









#                                    ╰╯
    youtube-music
    vscodium
    pwvucontrol
    brightnessctl
    hyprshot
    gparted

  ];
}
