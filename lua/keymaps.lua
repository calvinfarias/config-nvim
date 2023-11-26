
local opts = { noremap = true, silent = true }
--local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Set leader
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- nope
keymap("", "<Space>", "<Nop>", opts)

-- shortcut for saving files
keymap("n", "<leader>w", ":w!<CR>", opts)

-- navigate buffers
keymap("n", "<tab>", ":bnext<CR>", opts) 		-- Next Tab
keymap("n", "<s-tab>", ":bprevious<CR>", opts) 		-- Previous tab
keymap("n", "<leader>h", ":nohlsearch<CR>", opts) 	-- No highlight search

-- navigation
keymap("n", "<C-j>", "<C-y>", opts)
keymap("n", "<C-k>", "<C-e>", opts)
keymap("n", "<C-h>", "b", opts)
keymap("n", "<C-l>", "w", opts)
keymap("n", "<leader>h", "<Home>", opts)
keymap("n", "<leader>l", "<End>", opts)

-- move text up and down
keymap("n", "<a-k>", ":m .-2<CR>==", opts) 	-- Alt-k
keymap("n", "<a-j>", ":m .+1<CR>==", opts) 	-- Alt-j

keymap("n", "<M-down>", ":m +1<CR>==", opts)
keymap("n", "<M-up>", ":m -2<CR>==", opts)
keymap("i", "<M-down>", "<Esc>:m +1<CR>==gi", opts)
keymap("i", "<M-up>", "<Esc>:m -2<CR>==gi", opts)
keymap("x", "<M-down>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<M-up>", ":m '<-2<CR>gv=gv", opts)

-- [VISUAL] stay in indent mode
keymap("v", "<", "<gv", opts) 				-- Right Indentation
keymap("v", ">", ">gv", opts) 				-- Left Indentation

-- replace word
keymap("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", { noremap = true })

-- make
keymap("n", "<leader>m", ":w!<bar> !make %:r<CR>", { noremap = true })
