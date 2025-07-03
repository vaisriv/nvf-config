{
    pkgs,
    inputs,
    ...
}:
(inputs.nvf.lib.neovimConfiguration {
    inherit pkgs;
    modules = [
        ./config.nix
        ./lsp.nix
        ./plugins.nix
        ./theme.nix
    ];
}).neovim
