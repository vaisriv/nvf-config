{...}: {
    vim = {
        languages = {
            # config
            enableDAP = false;
            enableExtraDiagnostics = false;
            enableTreesitter = true;
            enableFormat = true;

            # languages
            lua.enable = true;
            nix.enable = true;
        };
    };
}
