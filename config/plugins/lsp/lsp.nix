{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      bashls.enable = true;
      cssls.enable = true;
      dockerls.enable = true;
      gleam.enable = true;
      gopls.enable = true;
      html = {
        enable = true;
        filetypes = [
          "html"
          "svg"
        ];
      };
      jsonls.enable = true;
      marksman.enable = true;
      nginx_language_server.enable = true;
      nixd.enable = true;
      phpactor.enable = true;
      sqls.enable = true;
      svelte.enable = true;
      taplo.enable = true;
      ts_ls.enable = true;
      vala_ls.enable = true;
      yamlls.enable = true;
    };
  };
}
