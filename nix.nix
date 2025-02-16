{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  packages = with pkgs; [
    nix
    nixfmt-rfc-style
  ];
}

# {
#   inputs = {
#     nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
#     flake-utils.url = "github:numtide/flake-utils";
#   };
#   outputs =
#     {
#       self,
#       nixpkgs,
#       flake-utils,
#     }:
#     flake-utils.lib.eachDefaultSystem (
#       system:
#       let
#         pkgs = import nixpkgs {
#           inherit system;
#         };
#       in
#       with pkgs;
#       {
#         devShells.default = mkShell {
#           buildInputs = [
#             nix
#             nixfmt-rfc-style
#           ];
#         };
#       }
#     );
# }
