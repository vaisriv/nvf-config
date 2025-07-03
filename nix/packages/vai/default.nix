{
    pkgs,
    inputs,
    ...
}:
(inputs.nvf.lib.neovimConfiguration {
    inherit pkgs;
    modules = [
        ./autocommands.nix
        ./autocomplete.nix
        ./config.nix
        ./keymaps.nix
        ./lsp.nix
        ./plugins.nix
    ];
}).neovim
