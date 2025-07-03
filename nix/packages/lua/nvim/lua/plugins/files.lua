-- File Manager

return {
	--[[ {
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>-",
				function()
					require("yazi").yazi()
				end,
				desc = "[-] Open directory view in floating window",
			},
		},
		opts = {
			open_for_directories = false,
		},
	}, ]]
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				columns = { "icon" },
				keymaps = {
					["<leader>q"] = "actions.close",
					["<M-CR>"] = "actions.select_split",
				},
				view_options = {
					show_hidden = true,
				},
			})
			require("which-key").add({
				{
					"<leader>-",
					"<cmd>Oil<cr>",
					desc = "[-] Open directory view in floating window",
					mode = { "n", "v" },
				},
			})
			vim.api.nvim_create_autocmd("Filetype", {
				pattern = "oil",
				callback = function()
					require("which-key").add({
						{
							"<leader>q",
							desc = "[Q]uit Oil",
							mode = { "n", "v" },
						},
					})
				end,
			})
		end,
	},
}
