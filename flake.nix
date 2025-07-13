{
  description = "A formalised, cross-linked reference resource for mathematics done in Homotopy Type Theory";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs = {
      type = "github";
      owner = "nixos";
      repo = "nixpkgs";
    };
    just-agda = {
      type = "github";
      owner = "cdo256";
      repo = "just-agda";
      ref = "main";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        ./support/nix/flake/args.nix
        ./support/nix/flake/packages.nix
        ./support/nix/flake/shells.nix
      ];
    };
}
