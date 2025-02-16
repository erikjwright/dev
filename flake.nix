{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		flake-utils.url = "github:numtide/flake-utils";
	};
	outputs = { self, nixpkgs, flake-utils, rust-overlay }:
		flake-utils.lib.eachDefaultSystem
		(system:
			let
				pkgs = import nixpkgs {
					inherit system;
				};
			in
				with pkgs;
			{
				devShells.default = mkShell {
					buildInputs = [
						lua-language-server
						stylua
						nix
					];
				};
			}
		);
}
