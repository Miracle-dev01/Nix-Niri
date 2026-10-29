{
  opener = {
    nvim = [
      {
        run = "nvim %s";
        block = true;
        desc = "Neovim";
      }
    ];

    nano = [
      {
	run = "nano %s";
	block = true;
	desc = "Nano";
      }
    ];

    zen = [
      {
        run = "zen %s";
        orphan = true;
        desc = "Zen Browser";
      }
    ];

    sioyek = [
      {
        run = "sioyek %s";
        orphan = true;
        desc = "Sioyek PDF Reader";
      }
    ];

    chromium = [
      {
        run = "chromium %s";
        orphan = true;
        desc = "Chromium Browser";
      }
    ];
  };

  open = {
    prepend_rules = [
      {
        mime = "application/pdf";
        use = [
          "zen"
          "sioyek"
          "chromium"
          "reveal"
        ];
      }
      {
        mime = "text/*";
        use = [
	   "nvim"
	   "nano"
	];
      }
    ];
  };
}
