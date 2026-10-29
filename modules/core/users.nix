{ config, pkgs, inputs, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  programs.dconf.enable = true;
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    overwriteBackup = true;
    backupFileExtension = "backup";
    users."miracle" = {
    	# Let Home Manager install and manage itself
	programs.home-manager.enable = true;
	xdg.enable = true;

	home = {
	  username = "miracle";
	  homeDirectory = "/home/miracle";
	  stateVersion = "26.05"; # Sensitive
	  sessionVariables = {
		EDITOR = "nvim";
		BROWSER = "zen-beta";
		TERMINAL = "alacritty";
	  };
	};
      };
     };
     users = {
     	mutableUsers = true;
	users."miracle" = {
	  isNormalUser = true;
	  extraGroups = [
	    "wheel"
            "input"
	    "networkmanager"
	    "video"
	    "audio"
            "libvirtd"
            "kvm"
            "docker"
            "disk"
	    "adbuser"
	    "lp"
	    "scanner"
          ];
	  shell = pkgs."zsh";
	  ignoreShellProgramCheck = true;
	};
      };
      nix.settings.allowed-users = [ "miracle" ];
}
