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
            lua.enable = true;
            nix = {
                enable = true;
                lsp.servers = [ "nixd" ];
            };
        };
    };
}
