{
  performance = {
    byteCompileLua = {
      enable = true;
      nvimRuntime = true;
      configs = true;
      # plugins = true;
    };
    combinePlugins = {
      enable = true;
      standalonePlugins = [
        "hmts.nvim"
	"nvim-treesitter"
      ];
    };
  };

  luaLoader.enable = true;
}
