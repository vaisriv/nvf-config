{
    description = "vai's nvf neovim configuration flake";

    inputs = {
        # nixpkgs
        nixpkgs.url = "github:nixos/nixpkgs/release-25.11";
        # nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

        # supported systems
        systems.url = "github:nix-systems/default";

        # flake tools (thanks numtide)
        blueprint = {
            url = "github:numtide/blueprint";
            inputs = {
                nixpkgs.follows = "nixpkgs";
                systems.follows = "systems";
            };
        };
        devshell = {
            url = "github:numtide/devshell";
            inputs.nixpkgs.follows = "nixpkgs";
        };
        treefmt-nix = {
            url = "github:numtide/treefmt-nix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        # nvf nix+neovim module
        nvf = {
            url = "github:notashelf/nvf";
            inputs = {
                nixpkgs.follows = "nixpkgs";
                systems.follows = "systems";
            };
        };
    };

    outputs =
        inputs:
        inputs.blueprint {
            inherit inputs;
            prefix = "./nix/";
        };
}
