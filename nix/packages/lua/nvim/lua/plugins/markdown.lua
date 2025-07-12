-- Markdown Tools

return {
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		priority = 49,
		ft = { "markdown", "qmd" },
		opts = {
		},
		config = function()
			-- markview config
			local markview = require("markview")
			local presets = require("markview.presets")
			markview.setup({
				preview = {
					-- off by default
					enable = false,
				},
				markdown = {
					headings = presets.headings.marker,
					horizontal_rules = presets.horizontal_rules.thick,
					tables = presets.tables.single,
				},
			})
			
			-- which-key config
			local wk = require("which-key")
			wk.add({
				{
					"<leader>r",
					group = "[R] Quarto",
					{ "<leader>rm", "<cmd>Markview Toggle<CR>", desc = "[M]arkdown" },
				},
			})
		end,
	},
	{
		"davidmh/mdx.nvim",
		config = true,
		dependencies = { "nvim-treesitter/nvim-treesitter" },
	},
}
