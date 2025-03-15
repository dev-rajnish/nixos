{
  programs.kitty.enable = true;

  programs.kitty.settings = {
    include = "~/.config/kitty/dark.conf";

    enable_kitty_app_clipboard = "yes";
    cursor_trail = 4;

    #background_opacity = 0.95; #stylix
    background_blur = 80;

    italic_font = "VictorMono Nerd Font";
    bold_italic_font = "VictorMono Nerd Font";
    #bold_font = "Noto Sans Mono";
  };

  #programs.kitty.themes = "";

  #programs.kitty.keybindings = "";

  programs.kitty.font = {
    #size = 14; -- #stylix
    #name = "FiraCode Nerd Font Ret"; -- #stylix
    #package = ;
  };

  programs.kitty.extraConfig = ''

  '';

  programs.kitty.environment = {
    "EDITOR" = "nvim";
  };
}
