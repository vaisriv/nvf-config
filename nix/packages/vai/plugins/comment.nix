{ ... }:
{
    vim = {
        comments.comment-nvim = {
            enable = true;
            mappings = {
                toggleCurrentLine = "<leader>cc";
                toggleCurrentBlock = "<leader>cb";

                toggleOpLeaderLine = "<leader>cc";
                toggleOpLeaderBlock = "<leader>cb";

                toggleSelectedLine = "<leader>cc";
                toggleSelectedBlock = "<leader>cb";
            };
            setupOpts.mappings = {
                basic = true;
                extra = true;
            };
        };
        binds.whichKey.register = {
            "<leader>c" = "[C]omment";
            "<leader>cc" = "Toggle [C]omment on [C]urrent Line";
            "<leader>cb" = "Toggle [C]omment on [B]lock";
        };
    };
}
