{
  plugins.snacks.settings.explorer = {
    replace_netrw = true;
  };
  plugins.snacks.settings.picker.sources.explorer = { auto_close = true; };

  keymaps = [
    {
      mode = "n";
      key = "<leader>e";
      action = ":lua Snacks.explorer()<CR>";
      options.desc = "File Explorer";
    }
  ];
}
