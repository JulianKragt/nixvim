{
  plugins.snacks.settings.dashboard = {
    enabled = true;
    preset = {
      keys = [
        {
          icon = "";
          key = "r";
          desc = "Recent files";
          action = "<leader>fr";
        }
        {
          icon = "";
          key = "n";
          desc = "New file";
          action = ":ene | startinsert";
        }
      ];
      header = ''
     ██┐██┐  ██┐██┐   ██┐   ██┐██┐███┐   ███┐
     ██│██│  ██│██│   ██│   ██│██│████┐ ████│
     ██│██│  ██│██│   ██│   ██│██│██┌████┌██│
██┐  ██│██│  ██│██│   └██┐ ██┌┘██│██│└██┌┘██│
███████│███████│██████┐└████┌┘ ██│██│ └─┘ ██│
└──────┘└──────┘└─────┘ └───┘  └─┘└─┘     └─┘
      '';
    };
    sections = [
      {
        section = "header";
        align = "center";
      }
      {
        title = "Keymaps";
        section = "keys";
        indent = 3;
        padding = 2;
      }
      {
        title = "Recent recent";
        section = "recent_files";
        padding = 2;
      }
      {
        title = "Projects";
        section = "projects";
        indent = 3;
        padding = 2;
      }

    ];
  };
}
