with import <nixpkgs> {};
with pkgs.python35Packages;

stdenv.mkDerivation {
  name = "hmartin.fr";

  buildInputs = [
    hugo
  ];
}
