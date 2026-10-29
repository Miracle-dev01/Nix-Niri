{
  pkgs,
  lib,
  host,
  config,
  ...
}:
let
  terminal = "alacritty";
in
let
  # Define your custom args once
  scriptArgs = {
    inherit
      host
      pkgs
      lib
      config
      terminal
      ;
  };

  scripts = [
    (import ./rebuild.nix scriptArgs)
    (import ./rollback.nix scriptArgs)
    (import ./network.nix scriptArgs)
    (import ./tmux-sessionizer.nix scriptArgs)
    (import ./extract.nix scriptArgs)
    (import ./driverinfo.nix scriptArgs)
    # Add new scripts here as you create them
  ];
in
{
  environment.systemPackages = scripts;
}
