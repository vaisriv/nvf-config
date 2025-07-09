{...}: {
    vim = {
        utility = {
            oil-nvim = {
                enable = true;
                setupOpts = {
                    columns = ["icon"];
                    keymaps = {
                        "<leader>q" = "actions.close";
                        "<M-CR>" = "actions.select_split";
                    };
                    view_options = {
                        show_hidden = true;
                    };
                };
            };
        };

        keymaps = [
            {
                key = "<leader>-";
                action = "<cmd>Oil<cr>";
                desc = "Open parent directory";
                mode = ["n" "v"];
            }
        ];
    };
}
