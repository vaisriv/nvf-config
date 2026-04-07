{ ... }:
{
    vim = {
        notes.todo-comments = {
            enable = true;
            setupOpts = {
                signs = false;
            };
        };
        binds.whichKey.register."<leader>td" = "[T]o[D]os";
    };
}
