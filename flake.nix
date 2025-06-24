{
  description = "A formalised, cross-linked reference resource for mathematics done in Homotopy Type Theory";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs = {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        ./support/nix/flake/args.nix
        ./support/nix/flake/packages.nix
      ];
    };
}
