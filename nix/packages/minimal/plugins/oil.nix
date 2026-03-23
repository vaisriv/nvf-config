{ lib, ... }:
{
    vim = {
        utility = {
            oil-nvim = {
                enable = true;

                gitStatus.enable = true;
                setupOpts = {
                    columns = [ "icon" ];
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
                desc = "[-] Open parent directory";
                mode = [
                    "n"
                    "v"
                ];
            }
        ];

        autocmds = [
            {
                event = [ "Filetype" ];
                pattern = [ "oil" ];
                callback =
                    lib.generators.mkLuaInline
                        # lua
                        ''
                            function()
                                require("which-key").add({
                                    {
                                        "<leader>q",
                                        desc = "[Q]uit Oil",
                                        mode = { "n", "v" },
                                        buffer = 0,
                                    },
                                })
                            end
                        '';
            }
        ];
    };
}
