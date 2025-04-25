{
  plugins.treesitter = {
    enable = true;
#   folding = true;
    nixvimInjections = true;
  };

  dependencies.nodejs = {
    enable = false;
  };
}
