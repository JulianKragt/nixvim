{
  pkgs,
  ...
}:
{
  extraPackages = [ pkgs.fd pkgs.ripgrep ];
  plugins.snacks.settings.picker = {};
  keymaps = [
    {
      mode = "n";
      key = "<leader>/";
      action = ":lua Snacks.picker.grep()<CR>";
      options.desc = "Find In Files";
    }
    # Find files
    {
      mode = "n";
      key = "<leader>fb";
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


  ];
}
