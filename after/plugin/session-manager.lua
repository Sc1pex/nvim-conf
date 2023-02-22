local session_manager = require("session_manager")
session_manager.setup({})

-- Autosave session on file save
local session_manager_autocmd = vim.api.nvim_create_augroup("Session Manager", {})
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	group = session_manager_autocmd,
	callback = function()
		if vim.bo.filetype ~= "git" and not vim.bo.filetype ~= "gitcommit" then
			session_manager.autosave_session()
		end
	end,
})
