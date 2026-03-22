{
  pkgs,
  ...
}:
{
  plugins.lualine = {
    enable = true;
    lazyLoad.enable = false;
    settings = {
      options.globalstatus = true;
      sections.lualine_c = [
        {
          __unkeyed-1 = "filename";
          path = 1; # relative path
        }
      ];
    };

    package = pkgs.vimPlugins.lualine-nvim.overrideAttrs (old: {
      postInstall = ''
        rm -f $out/lua/lualine/themes/onedark.lua
      '';
    });
  };
}
