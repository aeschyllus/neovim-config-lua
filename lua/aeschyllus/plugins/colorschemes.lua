return {
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	version = false,
	-- 	priority = 1000, -- load first before all other plugins
	-- 	config = function()
	-- 		vim.cmd("colorscheme everforest")
	-- 	end,
	-- },
	-- {
	-- 	"nobbmaestro/nvim-andromeda",
	-- 	dependencies = { "tjdevries/colorbuddy.nvim" },
	-- 	priority = 1000, -- load first before all other plugins
	-- 	config = function()
	-- 		require("andromeda").setup()
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme catppuccin-frappe")
		end,
	},
}
