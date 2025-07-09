-- Markdown Tools

return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {
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
	},
}
