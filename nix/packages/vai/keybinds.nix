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
            # selection helpers
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
                desc = "[Y]ank Entire Buffer";
            }

            # buffer helpers
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

            # window helpers
            {
                key = "<C-h>";
                mode = [ "n" ];
                silent = true;
                action = "<C-w><C-h>";
                desc = "[H] Focus Left Window";
            }
            {
                key = "<C-j>";
                mode = [ "n" ];
                silent = true;
                action = "<C-w><C-j>";
                desc = "[j] Focus Lower Window";
            }
            {
                key = "<C-k>";
                mode = [ "n" ];
                silent = true;
                action = "<C-w><C-k>";
                desc = "[k] Focus Upper Window";
            }
            {
                key = "<C-l>";
                mode = [ "n" ];
                silent = true;
                action = "<C-w><C-l>";
                desc = "[l] Focus Right Window";
            }

            # clear search highlight when pressing <Esc>
            {
                key = "<Esc>";
                mode = [ "n" ];
                silent = true;
                action = "<cmd>nohlsearch<CR>";
                desc = "[Esc] Clear Search Highlight";
            }
        ];
    };
}
