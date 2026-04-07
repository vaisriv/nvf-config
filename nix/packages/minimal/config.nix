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
        };

        clipboard = {
            enable = true;
            registers = "unnamedplus";
        };
    };
}
