{ 
  programs.foot = {

    enable = true;

    server.enable = false;

  };

  programs.foot.settings = {
   main = {
    term = "xterm-256color";

    font = "FiraCode Nerd Font Ret:size=12";
    dpi-aware = "yes";
  };

  mouse = {
    hide-when-typing = "yes";
  };
  };
}

