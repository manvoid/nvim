return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			icons = {
				mappings = false,
			},
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
		"rebelot/kanagawa.nvim",
		config = function()
			vim.cmd.colorscheme("kanagawa-wave")
		end,
	},
	{
		"stevearc/oil.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				delete_to_trash = true,
				skip_confirm_for_simple_edits = true,
				keymaps = {
					["<C-h>"] = false,
				},
			})

			vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		init = function()
			vim.g.lualine_laststatus = vim.o.laststatus
			if vim.fn.argc(-1) > 0 then
				-- set an empty statusline till lualine loads
				vim.o.statusline = " "
			else
				-- hide the statusline on the starter page
				vim.o.laststatus = 0
			end
		end,
		opts = function()
			vim.o.laststatus = vim.g.lualine_laststatus

			return {
				options = {
					theme = "auto",
					globalstatus = true,
					disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
				},
				-- sections = {
				-- 	lualine_a = { "mode" },
				-- 	lualine_b = { "branch" },
				-- 	lualine_y = {
				-- 		{ "progress", separator = " ", padding = { left = 1, right = 0 } },
				-- 		{ "location", padding = { left = 0, right = 1 } },
				-- 	},
				-- },
				extensions = { "neo-tree", "lazy" },
			}
		end,
	},
	{ "nvim-telescope/telescope-ui-select.nvim" },
	{
		"echasnovski/mini.icons",
		version = false,
		config = function()
			require("mini.icons").setup()
		end,
	},
	{
		"kessejones/term.nvim",
		config = function()
			require("term").setup()
			vim.keymap.set({ "t" }, "<C-t>", require("term").new, { silent = true })
			vim.keymap.set({ "n", "t" }, "<C-\\>", require("term").toggle, { silent = true })
			vim.keymap.set({ "t" }, "<C-n>", require("term").next, { silent = true })
			vim.keymap.set({ "t" }, "<C-p>", require("term").prev, { silent = true })
		end,
	},
}
