{
  pkgs,
  ...
}:
{
  extraPackages = [ pkgs.fd pkgs.ripgrep ];
  plugins.snacks.settings.picker = {
    sources = {
      command_history.focus = "list";
      projects.focus = "list";
      registers.focus = "list";
      jumps.focus = "list";
      buffers.focus = "list";
    };
  };
  keymaps = [
    # Find files
    {
      mode = "n";
      key = "<leader>b";
      action = ":lua Snacks.picker.buffers()<CR>";
      options.desc = "Find Buffers";
    }
    {
      mode = "n";
      key = "<leader>ff";
      action = ":lua Snacks.picker.files()<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fp";
      action = ":lua Snacks.picker.projects()<CR>";
      options.desc = "Projects";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = ":lua Snacks.picker.recent()<CR>";
      options.desc = "Recent";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = ":lua Snacks.picker.git_files()<CR>";
      options.desc = "Find Git Files";
    }
    # Git
    {
      mode = "n";
      key = "<leader>gb";
      action = ":lua Snacks.picker.git_branches()<CR>";
      options.desc = "Git Branches";
    }
    # Grep
    {
      mode = "n";
      key = "<leader>s";
      action = ":lua Snacks.picker.grep()<CR>";
      options.desc = "Find In Files";
    }
    {
      mode = "n";
      key = "<leader>sb";
      action = ":lua Snacks.picker.lines()<CR>";
      options.desc = "Search Buffer";
    }
    {
      mode = "n";
      key = "<leader>sB";
      action = ":lua Snacks.picker.grep_buffers()<CR>";
      options.desc = "Search Buffer";
    }
    {
      mode = "n";
      key = "<leader>sw";
      action = ":lua Snacks.picker.grep_word()<CR>";
      options.desc = "Search Buffers";
    }
    # Search
    {
      mode = "n";
      key = "<leader>y";
      action = ":lua Snacks.picker.registers()<CR>";
      options.desc = "Old Yanks";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = ":lua Snacks.picker.command_history()<CR>";
      options.desc = "Command History";
    }
    {
      mode = "n";
      key = "<leader>sC";
      action = ":lua Snacks.picker.commands()<CR>";
      options.desc = "Search Commands";
    }
    {
      mode = "n";
      key = "<leader>si";
      action = ":lua Snacks.picker.icons()<CR>";
      options.desc = "Search Icons";
    }
    {
      mode = "n";
      key = "<leader>sj";
      action = ":lua Snacks.picker.jumps()<CR>";
      options.desc = "Search From Jumps";
    }
    {
      mode = "n";
      key = "<leader>sk";
      action = ":lua Snacks.picker.keymaps()<CR>";
      options.desc = "Search Keymaps";
    }
    {
      mode = "n";
      key = "<leader>r";
      action = ":lua Snacks.picker.resume()<CR>";
      options.desc = "Search last search";
    }
    {
      mode = "n";
      key = "<leader>CO";
      action = ":lua Snacks.picker.colorschemes()<CR>";
      options.desc = "Search Keymaps";
    }
  ];
}
