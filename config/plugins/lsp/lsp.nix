{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      gleam = {
        enable = true;
        autostart = true;
      };
      nixd = {
        enable = true;
        autostart = true;
      };
      svelte = {
        enable = true;
        autostart = true;
      };
      ts_ls = {
        enable = true;
        autostart = true;
      };
    };
  };
}
