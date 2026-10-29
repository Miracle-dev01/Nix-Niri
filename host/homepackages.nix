{ pkgs, ... }:
{
    home-manager.sharedModules = [
    (_: {
      home.packages = with pkgs; [
        chromium
        sioyek
        octaveFull
        onlyoffice-desktopeditors
        libreoffice
        texliveSmall
        foliate
        

        fortune
        lolcat
      ];
    })
  ];
}
