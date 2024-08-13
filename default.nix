
{pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.neovim
    pkgs.git
    pkgs.python310
  ];
}
