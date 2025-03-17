{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    
    snacks-nvim = {
      url = "github:folke/snacks.nvim";
      flake = false;
    };
  };

  outputs =
    { nixpkgs, nixvim, ... }@inputs:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      forAllSystems = fn: nixpkgs.lib.genAttrs systems fn;
    in
    {
      packages = forAllSystems (
        system:
        let
          nixvimPkgs = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit system;
            module = import ./config;
            extraSpecialArgs = { inherit inputs; };
          };
          nvim = nixvimPkgs.makeNixvimWithModule nixvimModule;
        in
        {
          default = nvim;
        }
      );

      checks = forAllSystems (
        system:
        let
          nixvimModule = {
            inherit system;
            module = import ./config;
            extraSpecialArgs = { inherit inputs; };
          };
        in
        {
          default = nixvim.lib.${system}.check.mkTestDerivationFromNixvimModule nixvimModule;
        }
      );
    };
}
