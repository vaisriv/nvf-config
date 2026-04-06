{ lib, ... }:
{
    vim = {
        git.gitsigns = {
            enable = true;
            setupOpts = {
                signs = {
                    add.text = "+";
                    change.text = "~";
                    delete.text = "_";
                    topdelete.text = "‾";
                    changedelete.text = "~";
                };
            };
            mappings = {
                nextHunk = null;
                previousHunk = null;
                stageHunk = null;
                undoStageHunk = null;
                resetHunk = null;
                stageBuffer = null;
                resetBuffer = null;
                previewHunk = null;
                blameLine = null;
                toggleBlame = null;
                diffThis = null;
                diffProject = null;
                toggleDeleted = null;
            };
        };
        binds.whichKey.register."<leader>h" = lib.mkForce null;
    };
}
