{ self, ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      config.packages = {
        inherit (pkgs) agda;
        inherit (pkgs.agdaPackages) _1lab;
        inherit (pkgs.emacsPackages) agda2-mode;
        inherit (pkgs.labHaskellPackages) Agda;
      };
    };
}
