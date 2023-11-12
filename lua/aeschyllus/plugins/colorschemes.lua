return {
	{
		"neanias/everforest-nvim",
		version = false,
		priority = 1000, -- load first before all other plugins
		config = function()
			vim.cmd("colorscheme everforest")
		end,
	},
}
