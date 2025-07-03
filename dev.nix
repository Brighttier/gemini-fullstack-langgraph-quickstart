nix
# dev.nix
{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.nodePackages.npm
    pkgs.python311
    pkgs.python311Packages.pip
  ];

  shellHook = ''
    export NVM_DIR=$HOME/.nvm
    . "$NVM_DIR/nvm.sh"
    nvm use 18 || nvm install 18
  '';
}