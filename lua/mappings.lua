-- General
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })

-- Telescope
vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "Find recently opened files" })
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "Find existing buffers" })
vim.keymap.set("n", "<leader>ss", function()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "Fuzzy search in current buffer" })
vim.keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "Search files" })
vim.keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "Search help" })
vim.keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "Search current word" })
vim.keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "Search by grep" })
vim.keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "Search diagnostics" })

-- Diagnostic
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- SessionManager
vim.keymap.set("n", "<leader>Sl", "<cmd>SessionManager! load_last_session<cr>", { desc = "Load last session" })
vim.keymap.set("n", "<leader>Ss", "<cmd>SessionManager! save_current_session<cr>", { desc = "Load last session" })
vim.keymap.set("n", "<leader>Sd", "<cmd>SessionManager! delete_session<cr>", { desc = "Load last session" })
vim.keymap.set("n", "<leader>Sf", "<cmd>SessionManager! load_session<cr>", { desc = "Load last session" })

-- NeoTree
vim.keymap.set("n", "<leader>f", "<cmd>Neotree toggle<cr>", { desc = "Toggle Explorer" })
vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<cr>", { desc = "Focus Explorer" })

-- Comment
vim.keymap.set("n", "<leader>/", function()
	require("Comment.api").toggle.linewise.current()
end, { desc = "Comment line" })
vim.keymap.set(
	"v",
	"<leader>/",
	"<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>",
	{ desc = "Toggle comment line" }
)
