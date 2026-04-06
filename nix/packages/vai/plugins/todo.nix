{ ... }:
{
    vim = {
        notes.todo-comments = {
            enable = true;
            setupOpts = {
                signs = false;
            };
        };
        binds.whichKey.register."<leader>t" = "[T]odos";
    };
}
