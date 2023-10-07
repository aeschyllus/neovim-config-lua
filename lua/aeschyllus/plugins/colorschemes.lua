return {
	{
		"Everblush/nvim",
		name = "everblush",
		lazy = true,
	},
	{
		"neanias/everforest-nvim",
		lazy = true,
		-- version = false,
		-- priority = 1000, -- load first before all other plugins
		-- config = function()
		-- 	vim.cmd("colorscheme everforest")
		-- end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme tokyonight")
		end,
	},
}
