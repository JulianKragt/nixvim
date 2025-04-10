{
  plugins.snacks.settings.terminal = {};
  keymaps = [
    {
      mode = "n";
      key = "<c-/>";
      action = ":lua Snacks.terminal()<CR>";
      options.desc = "Toggle Terminal";
    }
  ];
}
