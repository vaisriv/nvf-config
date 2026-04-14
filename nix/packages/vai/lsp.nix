{ pkgs, ... }:
{
    vim = {
        lsp.enable = true;
        binds.whichKey.register."<leader>l" = "[L]SP";

        languages = {
            # config
            enableDAP = false;
            enableExtraDiagnostics = false;
            enableTreesitter = true;

            # languages
            arduino.enable = true;
            bash.enable = true;
            clang.enable = true;
            lua.enable = true;
            markdown.enable = true;
            nix = {
                enable = true;
                lsp.servers = [ "nixd" ];
            };
            python = {
                enable = true;
                lsp.servers = [
                    "ruff"
                    "ty"
                ];
            };
            tex.enable = true;
            typst.enable = true;
        };
    };
}
