{
  lib,
  ...
}:
{
  imports = (lib.filesystem.listFilesRecursive ./plugins)
    ++ [
      ./settings.nix
      ./options.nix
      ./colorscheme.nix
    ];
}
