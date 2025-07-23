-- [[ Basic Autocommands ]]

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Delete buffer(s) on corresponding file(s) deletion in oil.nvim (https://github.com/stevearc/oil.nvim/issues/207)
vim.api.nvim_create_autocmd("User", {
	desc = "Close buffers when files are deleted in Oil",
	pattern = "OilActionsPost",
	callback = function(args)
		if args.data.err then return end
		for _, action in ipairs(args.data.actions) do
			if action.type == "delete" then
				local _, path = require("oil.util").parse_url(action.url)
				local bufnr = vim.fn.bufnr(path)
				if bufnr ~= -1 then vim.cmd.bwipeout { bufnr, bang = true } end
			end
		end
	end,
})
