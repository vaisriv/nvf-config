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
                desc = "[-] Open Parent Directory";
                mode = [
                    "n"
                    "v"
                ];
            }
        ];

        autocmds = [
            # Show custom quit oil keymap only when in an Oil buffer
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

            # Delete buffer(s) on corresponding file(s) deletion in oil.nvim (https://github.com/stevearc/oil.nvim/issues/207)
            {
                event = [ "User" ];
                desc = "Close buffers when files are deleted in Oil";
                pattern = [ "OilActionsPost" ];
                callback =
                    lib.generators.mkLuaInline
                        # lua
                        ''
                            function(args)
                                if args.data.err then
                                    return
                                end
                                for _, action in ipairs(args.data.actions) do
                                    if action.type == "delete" then
                                        local _, path = require("oil.util").parse_url(action.url)
                                        local bufnr = vim.fn.bufnr(path)
                                        if bufnr ~= -1 then
                                            vim.cmd.bwipeout({ bufnr, bang = true })
                                        end
                                    end
                                end
                            end
                        '';
            }
        ];
    };
}
