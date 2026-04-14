{ pkgs, ... }:
{
    vim = {
        treesitter = {
            enable = true;
            fold = false;
            highlight.enable = true;
            indent.enable = false;

            addDefaultGrammars = true;
            grammars = pkgs.vimPlugins.nvim-treesitter.allGrammars;
        };
    };
}
