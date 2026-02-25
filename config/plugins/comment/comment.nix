{
  plugins.comment.enable = true;

  # Use <leader>c (Space+c) — <C-_> often doesn't work in macOS terminals
  keymaps = [
    {
      mode = "n";
      key = "<leader>co";
      action = "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>j";
      options = {
        noremap = true;
        silent = true;
      };
    }
    {
      mode = "v";
      key = "<leader>co";
      action = "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
      options = {
        noremap = true;
        silent = true;
      };
    }
  ];
}
