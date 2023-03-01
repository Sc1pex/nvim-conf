require("telescope").setup({
	defaults = { mappings = { i = { ["<C-u>"] = false, ["<C-d>"] = false } } },
	extensions = { file_browser = {} },
})
pcall(require("telescope").load_extension, "fzf")
pcall(require("telescope").load_extension, "toggletasks")
