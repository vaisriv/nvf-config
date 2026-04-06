{ ... }:
{
    vim = {
        viAlias = false;
        vimAlias = false;
        # enableLuaLoader = true;

        options = {
            autoindent = true;
            smartindent = true;
            breakindent = true;

            shiftround = true;
            expandtab = true;

            ignorecase = true;
            smartcase = true;
            inccommand = "split";

            list = true;
            listchars = "tab:│ ,trail:·,nbsp:␣";

            hlsearch = true;

            undofile = true;

            updatetime = 250;
            timeoutlen = 300;

            splitright = true;
            splitbelow = true;
        };

        clipboard = {
            enable = true;
            registers = "unnamedplus";
        };
        globals.clipboard = "osc52";
    };
}
