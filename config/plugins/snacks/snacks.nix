{
  inputs,
  pkgs,
  ...
}:
{
  plugins.snacks = {
    enable = true;
    package = pkgs.callPackage ../../../packages/snacks-nvim { inherit inputs; };
  };
}
