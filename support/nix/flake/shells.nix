{ self, ... }:
{
  perSystem =
    { pkgs, ... }:
    {
      devShells = {
        default = pkgs.mkShell {
          packages = [
            pkgs.agda
            pkgs.emacsPackages.agda2-mode
            pkgs.agdaPackages._1lab
          ];
        };
      };
    };
}
