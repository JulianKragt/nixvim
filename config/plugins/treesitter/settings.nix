{
  plugins.treesitter.settings = {
    auto_install = true;

    indent.enable = true;

    highlight.enable = true;

    incremental_selection = {
      enable = true;
      keymansp = {
        init_selection = "<leader>ss";
        node_incremental = "<leader>si";
        scope_incremental = "<leader>sc";
        node_decremental = "<leader>sd";
      };
    };
  };
}
