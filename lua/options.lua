local opt = vim.opt

-- Incremental search
opt.incsearch = true
opt.hlsearch = true

-- Show invisble characters
opt.list = true

opt.listchars:append({ tab = "▹ " }) -- alternatively use ▸
-- opt.listchars:append({ eol = "¬" })
-- opt.listchars:append({ trail = "·" })
-- opt.listchars:append({ nbsp = "⎵" })

-- Precede each line with its line number
opt.number = true

-- Disable relative line numbers
opt.relativenumber = false

-- Disable line wrap
opt.wrap = false

-- Configure indention
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Set column bar
opt.colorcolumn = "120"

-- Fix markdown indentation settings
--vim.g.markdown_recommended_style = 0

-- Backups
opt.swapfile = false
opt.backup = true
opt.backupdir = ".backup/,~/.vim/backup/,/tmp//"

-- For better performance
opt.updatetime = 50

vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

-- When opening a buffer, place the cursor in its last know position
local group = vim.api.nvim_create_augroup("jump_last_position", { clear = true })
vim.api.nvim_create_autocmd(
	"BufReadPost",
	{callback = function()
			local row, col = unpack(vim.api.nvim_buf_get_mark(0, "\""))
			if {row, col} ~= {0, 0} then
				vim.api.nvim_win_set_cursor(0, {row, col})
			end
		end,
	group = group
	}
)


