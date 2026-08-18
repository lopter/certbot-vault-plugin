{
  pkgs ? import <nixpkgs> { },
}:
let
  pyEnv = pkgs.python3.withPackages (ps: with ps; [
    certbot
    cryptography
    hvac
    requests
  ]);
in
pkgs.mkShellNoCC {
  packages = [ pyEnv ];
}
