{
  description = "Helpers for use in projects under the umbrella of The Nix Way";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs {};
      inherit (pkgs.stdenv.hostPlatform) isDarwin;
    in {
      lib = {
        homeDirectory = if isDarwin then "/Users" else "/home";
      };
    };
}