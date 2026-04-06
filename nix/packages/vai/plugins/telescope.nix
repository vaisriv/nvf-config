{ ... }:
{
    vim = {
        telescope = {
            enable = true;
            mappings = {
                buffers = "<leader><leader>";
            };
        };

        keymaps = [
            {
                key = "<leader><leader>";
                action = "<cmd>Telescope buffers<cr>";
                desc = "[ ] Search Buffers";
                mode = [
                    "n"
                    "v"
                ];
            }
        ];
        binds.whichKey.register."<leader>f" = "[F]ind with Telescope";
    };
}
