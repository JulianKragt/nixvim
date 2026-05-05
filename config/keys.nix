{
  globals.mapleader = " ";
  keymaps = [
    {
      key = "<Space>";
      action = "<Nop>";
    }
    {
      mode = "n";
      key = "<leader>d";
      action = "<cmd>lua vim.diagnostic.open_float()<CR>";
    }
    {
      mode = "n";
      key = "gd";
      action = "<cmd>lua vim.lsp.buf.definition()<CR>";
    }
    {
      mode = "n";
      key = "gr";
      action = "<cmd>lua vim.lsp.buf.references()<CR>";
    }
    {
      mode = [ "n" "v" ];
      key = "<leader>ca";       # trigger code actions
      action = "<cmd>lua vim.lsp.buf.code_action()<CR>";
      options = { silent = true; };
    }
    {
      mode = "n";
      key = "<leader>ci";
      action = "<cmd>lua vim.lsp.buf.code_action({ apply = true, context = { only = { 'source.organizeImports' }, diagnostics = {} } })<CR>";
      options = { desc = "Organize Imports"; silent = true; };
    }
    {
      mode = "n";
      key = "<leader>ws";
      action = ":split<CR>";
    }
    {
      mode = "n";
      key = "<leader>wv";
      action = ":vsplit<CR>";
    }
    {
      mode = "n";
      key = "<leader>wv";
      action = ":vsplit<CR>";
    }
     {
    mode = "n";
    key = "<leader>wh";
    action = "<C-w><C-h>";
    options.desc = "Focus left window";
  }
  {
    mode = "n";
    key = "<leader>wj";
    action = "<C-w><C-j>";
    options.desc = "Focus lower window";
  }
  {
    mode = "n";
    key = "<leader>wk";
    action = "<C-w><C-k>";
    options.desc = "Focus upper window";
  }
  {
    mode = "n";
    key = "<leader>wl";
    action = "<C-w><C-l>";
    options.desc = "Focus right window";
  }
  ];
}
