{ self, ... }:
{
  perSystem =
    {
      pkgs,
      lib,
      ...
    }:
    {
      devShells = {
        default = lib.mkShell {
          packages = [
            pkgs.agda
            pkgs.emacsPackages.agda2-mode
            pkgs.agdaPackages._1lab
          ];
        };
      };
    };
}
