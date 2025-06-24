{ self, ... }:
{
  perSystem =
    {
      pkgs,
      lib,
      ...
    }:
    {
      options.debugValues = lib.mkOption {
        type = lib.types.anything;
      };
      config.packages = {
        inherit (pkgs) agda;
        inherit (pkgs.agdaPackages) _1lab;
        inherit (pkgs.labHaskellPackages) Agda;
      };
    };
}
