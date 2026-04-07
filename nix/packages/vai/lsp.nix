{ ... }:
{
    vim = {
        lsp.enable = true;
        binds.whichKey.register."<leader>l" = "[L]SP";

        languages = {
            # config
            enableDAP = false;
            enableExtraDiagnostics = false;

            # languages
            arduino.enable = true;
            bash.enable = true;
            clang.enable = true;
            lua.enable = true;
            nix = {
                enable = true;
                lsp.servers = [
                    "nil"
                    "nixd"
                ];
            };
            python = {
                enable = true;
                lsp.servers = [
                    "ruff"
                    "ty"
                ];
            };
            typst.enable = true;
        };
    };
}
