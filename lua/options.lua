vim.g.have_nerd_font = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = ""
vim.opt.showmode = false

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 0

vim.opt.clipboard = "unnamedplus"
vim.opt.scrolloff = 999

-- comment
vim.opt.breakindent = true
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"

vim.opt.ignorecase = true
vim.opt.termguicolors = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Show which line your cursor is on
vim.opt.cursorline = true

vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- vim.lsp.set_log_level 'debug'
vim.cmd([[autocmd BufEnter *.tsx lua vim.opt.tabstop = 2]])
vim.cmd([[autocmd BufEnter *.tsx lua vim.opt.shiftwidth = 2]])
vim.cmd([[autocmd BufEnter *.tsx lua vim.opt.expandtab = true]])
vim.cmd([[autocmd BufEnter *.js lua vim.opt.tabstop = 2]])
vim.cmd([[autocmd BufEnter *.js lua vim.opt.shiftwidth = 2]])
vim.cmd([[autocmd BufEnter *.js lua vim.opt.expandtab = true]])

-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")

-- Diagnostic keymaps
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set({ "n" }, "<D-n>", "<C-w><C-h>", { desc = "Move focus to the left window" })
-- vim.keymap.set({ "n" }, "<D-i>", "<C-w><C-l>", { desc = "Move focus to the right window" })
-- vim.keymap.set({ "n" }, "<D-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
-- vim.keymap.set({ "n" }, "<D-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set({ "n" }, "<C-M-S-D-n>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set({ "n" }, "<C-M-S-D-i>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set({ "n" }, "<C-M-S-D-e>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set({ "n" }, "<C-M-S-D-u>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
vim.keymap.set({ "i" }, "<C-M-S-D-n>", "<Esc><C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set({ "i" }, "<C-M-S-D-i>", "<Esc><C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set({ "i" }, "<C-M-S-D-e>", "<Esc><C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set({ "i" }, "<C-M-S-D-u>", "<Esc><C-w>k", { desc = "Move focus to the upper window" })
vim.keymap.set({ "t" }, "<C-M-S-D-n>", "<C-\\><C-n><C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set({ "t" }, "<C-M-S-D-i>", "<C-\\><C-n><C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set({ "t" }, "<C-M-S-D-e>", "<C-\\><C-n><C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set({ "t" }, "<C-M-S-D-u>", "<C-\\><C-n><C-w>k", { desc = "Move focus to the upper window" })
-- Tabs movement
vim.keymap.set({ "n" }, "<C-M-S-D-y>", "<cmd>tabnext<cr>", { desc = "Move to next tab" })
vim.keymap.set({ "n" }, "<C-M-S-D-l>", "<cmd>tabprevious<cr>", { desc = "Move to previous tab" })
vim.keymap.set({ "i" }, "<C-M-S-D-y>", "<Esc><cmd>tabnext<cr>", { desc = "Move focus to the left window" })
vim.keymap.set({ "i" }, "<C-M-S-D-l>", "<Esc><cmd>tabprevious<cr>", { desc = "Move focus to the right window" })
vim.keymap.set({ "t" }, "<C-M-S-D-y>", "<C-\\><C-n><cmd>tabnext<cr>", { desc = "Move focus to the left window" })
vim.keymap.set({ "t" }, "<C-M-S-D-l>", "<C-\\><C-n><cmd>tabprevious<cr>", { desc = "Move focus to the right window" })

vim.keymap.set({ "i" }, "<M-BS>", "<Esc>bdwi")
vim.keymap.set({ "i" }, "<M-Left>", "<Esc>bi")
vim.keymap.set({ "i" }, "<M-Right>", "<Right><Esc>ea")
vim.keymap.set({ "n" }, "<M-BS>", "bdw")
vim.keymap.set({ "i", "n" }, "<D-s>", "<cmd>w<cr>", { desc = "Save file" })

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP actions",
	callback = function(event)
		local opts = { buffer = event.buf }

		-- these will be buffer-local keybindings
		-- because they only work if you have an active language server

		vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
		vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
		vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
		vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
		vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
		vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
		vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
	end,
})

-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
