{ lab-pkgs }:
pkgs: super: {
  labAgda = super.agda.overrideAttrs (old: {
    Agda = lab-pkgs.labHaskellPackages.Agda;
  });
}
