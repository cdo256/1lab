{
  description = "A formalised, cross-linked reference resource for mathematics done in Homotopy Type Theory";

  inputs = {
    #nixpkgs = {
    #  type = "github";
    #  owner = "nixos";
    #  repo = "nixpkgs";
    #  ref = "6cfbf89825dae72c64188bb218fd4ceca1b6a9e3";
    #  #sha256 = "sha256:17m78fn3y2x44zgdm428k3l6xamyw6vnz2vd68nj5kxlkbfqnynr";
    #};
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } (top: {
      systems = [
        "x86_64-linux"
      ];
      perSystem =
        { system, ... }:
        {
          packages = {
            default = import ./default.nix {
              inherit system;
              inNixShell = true;
              interactive = true;
            };
          };
          devShells = {
            default = import ./default.nix {
              inherit system;
              inNixShell = true;
              interactive = true;
            };
          };
        };
    });
}
