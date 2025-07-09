{...}: {
    vim.autocomplete = {
        # enableSharedCmpSources = true;

        blink-cmp = {
            enable = true;
            friendly-snippets.enable = true;

            mappings = {
                close = "<C-e>";
                complete = "<C-t>";
                confirm = "<C-y>";
                next = "<C-n>";
                previous = "<C-p>";
                scrollDocsDown = "<C-f>";
                scrollDocsUp = "<C-b>";
            };

            sourcePlugins = {
                emoji.enable = true;
                ripgrep.enable = true;
            };
        };
    };
}
