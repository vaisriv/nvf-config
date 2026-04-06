{ ... }:
{
    vim = {
        utility.undotree.enable = true;
        keymaps = [
            {
                key = "<leader>u";
                action = "<cmd>UndotreeToggle<cr>";
                desc = "[U]ndoTree";
                mode = [
                    "n"
                    "v"
                ];
            }
        ];
    };
}
