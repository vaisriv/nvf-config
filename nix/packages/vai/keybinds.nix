{ ... }:
{
    vim = {
        binds.whichKey = {
            enable = true;
            setupOpts = {
                icons.mappings = false;
            };
        };

        keymaps = [
            # helpful bindings
            {
                key = "<leader>a";
                mode = [ "n" ];
                silent = true;
                action = "ggVG";
                desc = "Select [A]ll";
            }
            {
                key = "<leader>y";
                mode = [ "n" ];
                silent = true;
                action = "<cmd>%y+<CR>";
                desc = "[Y]ank entire buffer";
            }
            {
                key = "<leader>w";
                mode = [ "n" ];
                silent = true;
                action = "<cmd>write<CR>";
                desc = "[W]rite Buffer";
            }
            {
                key = "<leader>d";
                mode = [ "n" ];
                silent = true;
                action = "<cmd>bdelete<CR>";
                desc = "[D]elete Buffer";
            }
            {
                key = "<leader>b";
                mode = [ "n" ];
                silent = true;
                action = "<cmd>bprevious<CR>";
                desc = "[B]ack Buffer";
            }
            {
                key = "<leader>n";
                mode = [ "n" ];
                silent = true;
                action = "<cmd>bnext<CR>";
                desc = "[N]ext Buffer";
            }
        ];
    };
}
