{
  plugins.diffview = {
    enable = true;
  };

  extraConfigLua = ''
  function ToggleDiffview()
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(win))
      if string.match(bufname, "^diffview://") then
        vim.cmd("DiffviewClose")
        return
      end
    end
    vim.cmd("DiffviewOpen")
  end
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>gd";
      action = "<cmd>lua ToggleDiffview()<CR>";
      options = {
        desc = "Toggle Diffview (open/close)";
        silent = true;
      };
    }
  ];
}
