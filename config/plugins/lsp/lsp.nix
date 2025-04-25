{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      html.enable = true;
      gleam.enable = true;
      nixd.enable = true;
      svelte.enable = true;
      ts_ls.enable = true;
      yamlls.enable = true;
      jsonls.enable = true;
      gopls.enable = true;
    };
  };
}
