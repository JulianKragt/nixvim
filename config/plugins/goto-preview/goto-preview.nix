{
  plugins.goto-preview.enable = true;

   keymaps = [
      {
        mode = "n";
        key = "<leader>k";
        action = "<cmd>lua require('goto-preview').goto_preview_definition()<cr>";
      }
      {
        mode = "n";
        key = "<leader>q";
        action = "<cmd>lua require('goto-preview').close_all_win()<cr>";
      }
    ];
}
