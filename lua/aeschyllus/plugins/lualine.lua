return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = {
		options = {
			disabled_filetypes = {
				"help",
				"neo-tree",
				"alpha",
			},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = {
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					sections = { "error", "warn" },
					symbols = { error = " ", warn = " " },
					colored = false,
					update_in_insert = false,
					always_visible = true,
				},
			},
		},
	},
}
