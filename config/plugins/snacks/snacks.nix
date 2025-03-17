{
  inputs,
  pkgs,
  ...
}:
{
  plugins.snacks = {
    enable = true;
    package = pkgs.callPackage ../../../packages/snacks-nvim { inherit inputs; };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>db";
      action = "lua: Snacks.bufdelete()";
      options.desc = "Delete Buffer";
    }
    {
      mode = "n";
      key = "<leader>cR";
      action = "lua: Snacks.rename.rename_file()";
      options.desc = "Rename File";
    }
  ];
}
