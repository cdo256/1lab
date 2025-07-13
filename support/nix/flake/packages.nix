{ self, inputs, ... }:
{
  perSystem =
    { pkgs, system, ... }:
    {
      packages = rec {
        inherit (pkgs) agda;
        inherit (pkgs.agdaPackages) _1lab;
        inherit (pkgs.emacsPackages) agda2-mode;
        inherit (pkgs.labHaskellPackages) Agda;
        just-agda = inputs.just-agda.packages.${system}.default.override {
          inherit agda agda2-mode;
        };
      };
    };
}
