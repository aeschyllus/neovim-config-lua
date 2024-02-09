return {
	-- {
	-- 	"neanias/everforest-nvim",
	-- 	version = false,
	-- 	priority = 1000, -- load first before all other plugins
	-- 	config = function()
	-- 		vim.cmd("colorscheme everforest")
	-- 	end,
	-- },
	{
    "nobbmaestro/nvim-andromeda",
    version = false,
    priority = 1000, -- load first before all other plugins
    dependencies = {
      { "tjdevries/colorbuddy.nvim" },
    },
    config = function()
      require("andromeda").setup()
    end,
	},
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  }
}
