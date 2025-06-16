{
  description = "A formalised, cross-linked reference resource for mathematics done in Homotopy Type Theory";

  inputs = {
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
