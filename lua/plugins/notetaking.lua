return {
	{
		"nvim-neorg/neorg",
		dependencies = { "luarocks.nvim" },
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.concealer"] = {},
					["core.dirman"] = {
						config = {
							workspaces = {
								notes = "~/notes",
							},
							default_workspace = "notes",
						},
					},
				},
			})
		end, -- put any other flags you wanted to pass to lazy here!
	},
}
