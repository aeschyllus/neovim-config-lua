return {
	"akinsho/toggleterm.nvim",
	version = "*",
	keys = {
		{
			"<a-n>",
			"<cmd>ToggleTerm direction=horizontal size=20<cr>",
			desc = "Toggle horizontal terminal",
		},
		{

			"<a-h>",
			"<cmd>ToggleTerm direction=float<cr>",
			desc = "Toggle floating terminal",
		},
	},
	config = function()
		require("toggleterm").setup()
	end,
}
