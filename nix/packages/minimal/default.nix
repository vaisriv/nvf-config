{
    pkgs,
    inputs,
    ...
}:
(inputs.nvf.lib.neovimConfiguration {
    inherit pkgs;
    modules = [
        ./autocomplete.nix
        ./config.nix
        ./keybinds.nix
        ./lsp.nix
        ./plugins
        ./theme.nix
    ];
}).neovim
