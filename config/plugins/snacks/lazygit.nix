{
  plugins.lazygit.enable = true;
  plugins.snacks.settings.lazygit = {};
  keymaps = [
    {
      mode = "n";
      key = "<leader>gg";
      action = ":lua Snacks.lazygit()<CR>";
      options.desc = "LazyGit";
    }
  ];
}
