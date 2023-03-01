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
vim.keymap.set("n", "<leader>Ss", "<cmd>SessionManager! save_current_session<cr>", { desc = "Save current session" })
vim.keymap.set("n", "<leader>Sd", "<cmd>SessionManager! delete_session<cr>", { desc = "Delete last session" })
vim.keymap.set("n", "<leader>Sf", "<cmd>SessionManager! load_session<cr>", { desc = "Find sessions" })

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

-- Buffers
vim.keymap.set("n", "<S-l>", "<Plug>(cokeline-focus-next)", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", "<Plug>(cokeline-focus-prev)", { desc = "Previous buffer" })
vim.keymap.set("n", ">b", "<Plug>(cokeline-switch-next)", { desc = "Move buffer right" })
vim.keymap.set("n", "<b", "<Plug>(cokeline-switch-prev)", { desc = "Move buffer left" })

vim.keymap.set("n", "<leader>bc", "<cmd>bd<cr>", { desc = "Close buffer" })

-- ToggleTerm
vim.keymap.set({ "n", "t" }, "<C-`>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

-- Better terminal mappings

-- Better split mappings
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to below split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to above split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize -2<CR>", { desc = "Resize split up" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize +2<CR>", { desc = "Resize split down" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Resize split left" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Resize split right" })

-- Toggle tasks
vim.keymap.set("n", "<space>ts", require("telescope").extensions.toggletasks.spawn, { desc = "Spawn task" })
vim.keymap.set("n", "<space>tl", require("telescope").extensions.toggletasks.select, { desc = "Select running task" })
vim.keymap.set("n", "<space>te", require("telescope").extensions.toggletasks.edit, { desc = "Edit task" })
