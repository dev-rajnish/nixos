{
  config,
  pkgs,
  nixpkgs,
  ...
}: {
  home.packages = with pkgs; [
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
    waybar
    wifite2
    nh
    swaynotificationcenter
    qemu
    virt-manager
    libvirt

    youtube-music
    vscodium
    pwvucontrol
    brightnessctl
    hyprshot
    gparted
  ];
}
