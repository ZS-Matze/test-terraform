{ pkgs ? import (fetchTarball {
    url = "https://github.com/nixos/nixpkgs/tarball/4b30f5ca85d7016ae450f9a5a69076b931e17e66";
    sha256 = "14fd8v64ipsccf7pwpyl84v3n4ckghngwnyj6m23c20p5ns225gp";
}) {}
}:
with pkgs;
    mkShell {
        name = "foo";
        buildInputs = [
            terraform_0_13
            doctl
        ];
    }
