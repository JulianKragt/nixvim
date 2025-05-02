{
  plugins.comment.enable = true;

  keymaps = [
    {
      mode = "n";
      key = "<C-_>";
      action = "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<C-_>";
      action = "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
