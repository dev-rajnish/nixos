{config, pkgs, ...}:

{
  let
    nur-pkgs =  import = (builtins.fetchTarball ""){};
  home.packages = with pkgs; [
  nur.repos.zzzsy.zen-browser
];


}
