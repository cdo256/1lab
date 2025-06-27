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
            pkgs.agdaPackages._1lab
          ];
        };
      };
    };
}
