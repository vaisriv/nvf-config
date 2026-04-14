{ ... }:
{
    vim = {
        notes.todo-comments = {
            enable = true;
            setupOpts = {
                signs = false;
            };
            mappings = {
                quickFix = "tq";
                telescope = "tt";
            };
        };
        binds.whichKey.register = {
            "<leader>t" = "[T]oDos";
            "<leader>tq" = "Open [T]oDos in a [Q]uickfix list";
            "<leader>tt" = "Open [T]oDos in [T]elescope";
        };
    };
}
