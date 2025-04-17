{
  plugins.snacks.settings.explorer = {
    enabled = true;
    replace_netrw = true;
  };
  plugins.snacks.settings.picker.sources.explorer = {
    auto_close = true;
    git_status_open = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":lua Snacks.explorer()<CR>";
      options.desc = "File Explorer";
    }
  ];
}
