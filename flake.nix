{
  description = "Helpers for use in projects under the umbrella of The Nix Way";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs }:
    let
      inherit (nixpkgs.stdenv.hostPlatform) isDarwin;
    in {
      lib = {
        homeDir = if isDarwin then "/Users" else "/home";
      };
    };
}