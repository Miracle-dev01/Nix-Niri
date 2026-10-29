{ pkgs, lib, ... }:

let
  catppuccinTheme = pkgs.catppuccin-sddm.override {
    flavor = "mocha";
    accent = "mauve";
  };
in
{
  services.displayManager = {
    defaultSession = "niri";

    sddm = {
      enable = true;
      wayland.enable = true;
      enableHidpi = true;
      autoNumlock = true;
      package = lib.mkForce pkgs.kdePackages.sddm;
      extraPackages = [
        catppuccinTheme
        pkgs.kdePackages.qtsvg
        pkgs.kdePackages.qtmultimedia
        pkgs.kdePackages.qtvirtualkeyboard
	pkgs.kdePackages.qtdeclarative
      ];
      settings.Theme.CursorTheme = "capitaine-cursors";
      theme = "catppuccin-mocha-mauve";
    };
  };

  environment.systemPackages = [
    catppuccinTheme
  ];
}
