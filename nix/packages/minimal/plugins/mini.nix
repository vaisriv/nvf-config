{...}: {
    vim = {
        mini = {
            basics.enable = true;
            icons.enable = true;
            jump.enable = true;
            jump2d = {
                enable = true;
                setupOpts = {
                    mappings = {
                        start_jumping = "s";
                    };
                };
            };
            notify.enable = true;
            starter = {
                enable = true;
                setupOpts = {
                    header = " ⟋|､\n(°､ ｡ 7\n |､  ~ヽ\n じしf_,)ノ\n";
                    footer = "";
                    items = [
                        {
                            action = "<NOP>";
                            name = " nvim";
                            section = "";
                        }
                    ];
                    query_updaters = "";
                    silent = true;
                };
            };
            statusline.enable = true;
            tabline.enable = true;
        };
    };
}
