{pkgs ? import <nixpkgs> {} }:


pkgs.mkShell {
  buildInputs = [
    (pkgs.python3.withPackages (ps: [ps.pip]))
    pkgs.stdenv.cc.cc.lib
    pkgs.neovim
    pkgs.git
    pkgs.autogen
    pkgs.cairo
    pkgs.pango
    pkgs.pkg-config
    pkgs.gcc
    pkgs.python312Packages.manimpango
    pkgs.manim
 ];

  shellHook = ''
   echo ""
   echo "   __  __    _  _____ _   _    ____ ____ _____" 
   echo "|  \/  |  / \|_   _| | | |  / ___|  _ \_   _|"
   echo "| |\/| | / _ \ | | | |_| | | |  _| |_) || |" 
   echo "| |  | |/ ___ \| | |  _  | | |_| |  __/ | |" 
   echo "|_|  |_/_/   \_\_| |_| |_|  \____|_|    |_|"  
   echo ""
 '';
}


