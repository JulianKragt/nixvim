{
  lib,
  pkgs,
  ...
}:
{
  extraPackages = [
    pkgs.nerd-fonts.fira-code
    pkgs.gcc
  ];
  imports = (lib.filesystem.listFilesRecursive ./plugins)
    ++ [
      ./settings.nix
      ./options.nix
      ./colorscheme.nix
      ./keys.nix
    ];
}
