{
  description = "flake on deez, call me akky";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.thinkpad = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
      ];
    };
  };
}
