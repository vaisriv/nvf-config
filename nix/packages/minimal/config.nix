{ ... }:
{
    vim = {
        viAlias = false;
        vimAlias = false;

        options = {
            autoindent = true;
            smartindent = false;
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
