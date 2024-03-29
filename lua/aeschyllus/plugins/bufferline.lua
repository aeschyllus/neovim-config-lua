return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	version = "*",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			close_command = function(n)
				require("mini.bufremove").delete(n, false)
			end,
			offsets = {
				{
					filetype = "neo-tree",
					text = "Neo-tree",
					highlight = "Directory",
					text_alignt = "left",
				},
			},
		},
		highlights = {
			fill = {
				fg = "#23262e",
				bg = "#23262e",
			},
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
}
