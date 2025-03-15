{
  plugins.treesitter-textobjects = {
    enable = true;

    select = {
      enable = true;
      lookahead = true;
      includeSurroundingWhitespace = true;

      keymaps = {
        "af".query = "@function.outer";
        "if".query = "@function.inner";
        "ac".query = "@class.outer";
        "ic".query = "@class.inner";
        "as" = {
          query = "@scope";
          queryGroup = "locals";
        };
      };

      selectionModes = {
        "@function.outer" = "v";
      };
    };
  };
}
