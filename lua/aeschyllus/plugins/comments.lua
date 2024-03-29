return {
	{ "JoosepAlviste/nvim-ts-context-commentstring", lazy = true },
	-- {
	--   "echasnovski/mini.comment",
	--   event = "VeryLazy",
	--   opts = {
	--     options = {
	--       custom_commentstring = function()
	--         return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
	--       end,
	--     },
	--   },
	-- },
	{
		"numToStr/Comment.nvim",
		lazy = false,
		config = function()
			require("Comment").setup({
				pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
			})
		end,
	},
}
