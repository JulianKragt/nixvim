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
  ];
}
