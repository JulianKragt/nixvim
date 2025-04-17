{
  pkgs,
  ...
}:
{
  plugins.lualine = {
    enable = true;
    lazyLoad.enable = false;
    settings.options.globalstatus = true;

    package = pkgs.vimPlugins.lualine-nvim.overrideAttrs (old: {
      postInstall = ''
        rm -f $out/lua/lualine/themes/onedark.lua
      '';
    });
  };
}
