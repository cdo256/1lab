{ self, ... }:
{
  perSystem =
    { self', pkgs, ... }:
    {
      devShells = {
        default = pkgs.mkShell {
          packages = [
            pkgs.agda
            pkgs.emacsPackages.agda2-mode
            pkgs.agdaPackages._1lab
            self'.packages.just-agda
          ];
        };
      };
    };
}
