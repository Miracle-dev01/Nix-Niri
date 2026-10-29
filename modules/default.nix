{ ... }:

{
  imports = [
  
    ./hardware/video/intel.nix
    
	  ./core/bash.nix
	  ./core/network.nix
	  ./core/packages.nix
	  ./core/ssh.nix
	  ./core/starship.nix
	  ./core/zsh.nix
	  ./core/users.nix
	  ./core/fonts.nix
	  ./core/dns.nix
	  ./core/system.nix
	  ./core/sddm.nix
	  ./core/services.nix
	  ./core/virtualisation.nix
	  ./core/nh.nix
	  ./core/security.nix
	  ./core/boot.nix


	  ./programs/terminal/alacritty
	  ./programs/terminal/kitty

	  ./programs/file-manager/yazi
	  # ./programs/misc/cpufreq # Disable power-profiles
	  ./programs/misc/lact
	  ./programs/misc/tlp
	
	  ./programs/cli/btop
	  ./programs/cli/cava
	  ./programs/cli/direnv
	  ./programs/cli/fastfetch
	  ./programs/cli/lazygit
	  ./programs/cli/tmux

	  ./programs/editor/nixvim
	  # ./programs/editor/neovim
	  # ./programs/editor/doom-emacs

    # ./programs/browser/firefox
    ./programs/browser/zen-beta
    #./programs/browser/floorp/


  	./scripts
   ];

}
