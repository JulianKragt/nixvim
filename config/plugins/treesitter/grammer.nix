{
  pkgs,
  ...
}:
{
  plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    bash
    json
    markdown
    nix
    regex
    toml
    vim
    vimdoc
    xml
    yaml
  ];
}
