{
  plugins.treesitter-textobjects = {
    enable = true;

    settings.select = {
      enable = true;
      lookahead = true;
      include_surrounding_whitespace = true;

      # Modes for selections (if needed)
      selection_modes = {
        "@function.outer" = "v";
      };

      # Keymaps must include `query_group` and `desc`
      keymaps = {
        # Outer / inner function
        "af" = {
          query_group = "@function.outer";
          desc = "Select outer function";
        };
        "if" = {
          query_group = "@function.inner";
          desc = "Select inner function";
        };

        # Outer / inner class
        "ac" = {
          query_group = "@class.outer";
          desc = "Select outer class";
        };
        "ic" = {
          query_group = "@class.inner";
          desc = "Select inner class";
        };

        # Scope with custom group
        "as" = {
          query_group = "@scope";
          desc = "Select scope";
        };
      };
    };
  };
}

