{ ... }:
{
    vim = {
        treesitter = {
            enable = true;
            fold = false;
            highlight.enable = true;
            indent.enable = false;

            addDefaultGrammars = true;
        };
        # binds.whichKey.register."<leader>ts" = "[T]ree[S]itter";
    };
}
