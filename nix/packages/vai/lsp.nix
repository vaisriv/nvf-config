{ ... }:
{
    vim = {
        lsp.enable = true;

        languages = {
            # config
            enableDAP = false;
            enableExtraDiagnostics = false;
            # enableTreesitter = true;

            # languages
            arduino.enable = true;
            bash.enable = true;
            clang.enable = true;
            julia.enable = true;
            lua.enable = true;
            nix.enable = true;
            python = {
                enable = true;
                lsp.servers = [
                    "ruff"
                    "ty"
                ];
            };
            typst.enable = true;
        };

        binds.whichKey.register."<leader>l" = "[L]SP";
    };
}
