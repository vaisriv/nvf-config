{ ... }:
{
    vim = {
        treesitter = {
            enable = true;
            fold = true;
            highlight.enable = true;
            indent.enable = false;
        };
        # binds.whichKey.register."<leader>ts" = "[T]ree[S]itter";
    };
}
