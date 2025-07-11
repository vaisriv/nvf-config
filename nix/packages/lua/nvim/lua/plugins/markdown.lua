-- Markdown Tools

return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = "markdown",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
			-- off by default
			enabled = false,

			completions = { lsp = { enabled = true } },

			-- code blocks
			code = {
				sign = false,
				style = "full",
				border = "thick",
				left_pad = 2,
				language_pad = 2,
			},

			-- block quotes
			quote = { repeat_linebreak = true },
			win_options = {
				showbreak = {
					default = "",
					rendered = "  ",
				},
				breakindent = {
					default = false,
					rendered = true,
				},
				breakindentopt = {
					default = "",
					rendered = "",
				},
			},

			-- checkboxes
			checkbox = {
				unchecked = {
					highlight = "RenderMarkdownH5",
				},
				checked = {
					highlight = "RenderMarkdownH4",
				},
				custom = {
					todo = {
						rendered = "◯ ",
						highlight = "RenderMarkdownH3",
					},
					important = {
						raw = "[~]",
						rendered = "󰓎 ",
						highlight = "RenderMarkdownH2",
					},
				},
			},

			-- heading indent
			heading = { border = true },
			indent = {
				enabled = true,
				skip_level = 2,
			},

			-- latex
			latex = {
				enabled = true,
				position = "above",
			},
		},
		config = function()
			-- which-key config
			local wk = require("which-key")
			wk.add({
				{
					"<leader>r",
					group = "[R] Quarto",
					{ "<leader>rm", "<cmd>RenderMarkdown toggle<CR>", desc = "[M]arkdown" },
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
