{ lib, ... }:
{
    vim = {
        languages.markdown.extensions.markview-nvim = {
            enable = true;
            setupOpts = {
                # preview defaults to off
                preview.enable = false;

                # presets
                markdown = {
                    headings = "markview.presets.headings.marker";
                    horizontal_rules = "markview.presets.horizontal_rules.thick";
                    tables = "markview.presets.tables.single";
                };
            };
        };

        # autocmds = [
        #     # show markview preview keymap only in supported buffers
        #     {
        #         event = [ "Filetype" ];
        #         pattern = [ "markdown" "latex" "quarto" "rmd" "typst" ];
        #         callback =
        #             lib.generators.mkLuaInline
        #                 # lua
        #                 ''
        #                     function()
        #                         require("which-key").add({
        #                             {
        #                                 "<leader>r",
        #                                 "<cmd>Markview toggle<CR>",
        #                                 desc = "[R]ender Inline",
        #                                 mode = { "n", "v" },
        #                                 silent = true,
        #                                 buffer = 0,
        #                             },
        #                         })
        #                     end
        #                 '';
        #     }
        # ];
    };
}
