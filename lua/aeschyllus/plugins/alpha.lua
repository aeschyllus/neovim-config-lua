math.randomseed(os.time())

local quotes = {
	-- Marcus Aurelius
	"               The best way to anger is silence.",
	"        The best revenge is not to be like your enemy.",
	"               Confine yourself to the present.",
	"          You can commit injustice by doing nothing.",
	"               Each day provides its own gifts.",
	"          Give yourself a gift, the present moment.",

	-- Seneca
	"     We suffer more often in imagination than in reality.",
	"            While we wait for life, life passes.",
	"           Life is long, if you know how to use it.",
	"                      Hurry up and live.",
	-- "▓▓▓▓▓▒▒▓███▓▒▓▓▓█▓██▒▒▒▓▓▓▒▒▓▓▓▓▓▓▒▒▒█▒░▒▒▒▓▓███▒▒▒▓▓▓▒░░▒██▓▓",
}

return {
	"goolord/alpha-nvim",
	config = function()
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[                               ▓▓▓█▓▓██▓▓█▓                   ]],
			[[                      ▓▓▓██▓██▓▓▒▓▓▓██▓▓▓▒▓▓                  ]],
			[[                     ▓█▓▓████▓▓▓▓▓▓██▓▓▓▓▓▓▓▓▓▓▓              ]],
			[[                 ▓▓█▓█▓▓█▓▓▒█▓▓█▓▓▓▒▓▒▓▓▓██▒▓▓▓▓▓▓▒           ]],
			[[                 ▓▓█▓▓▓█▓▓███████▓▓▒█▓▓▓▒▓▓▓▓▓▓▓▒▓▓▓          ]],
			[[              ▓▓█▓▓▓▓▓█▓▓▓██▓▓▓▓██▓▓▓█▓▓█▓▓▒▓▒▓█▓▓█▓▒         ]],
			[[              ▓▓██▓▓███▓▓▓██▓█▓▓██▓▓▓██▓█▓▓▓▓▓▓▓█▓▓▓▓▓        ]],
			[[             ▓█▓▓▓█▓█▓▒▓▓▓██▓██▓▓▓▓▓▓▒▓█▓▓▓▓▓████▓▒▓█▓        ]],
			[[             ▓██▓▓▓████▓█▓██▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▓██▓█▓▒▒▓▓       ]],
			[[             ▓▓██▓▓▓▒▓▓▓████▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▒░▒▓▓▓▓█▓▓▓        ]],
			[[           ▓▓█▓▓▓▓▓█▓▒▓█▓███▒▒▒▒▒▒▒▒▒▒▓▒▒▒▒▒▒▒▒▓▓▓▓▓▓▓        ]],
			[[           ▓▓████████▓▓█████▓▓▒▓▓████▓▓▓▓▓▓▓▒▒▒▓█▓▓▓▓         ]],
			[[            ▓█▓█████▓▓▓█████▓█▓▓▒▒▓██▒▒███▓▒▒▓▒▓█▓▓▓▓         ]],
			[[            ▓█▓▓▓██▓▓▓▓██▓██▓▓▓▓▒▒▒██▓░▒▒▓▓▒▒▒▒▓▓█▓▓▓         ]],
			[[            █████▓██▓████▓▒▒▒▓▓▓▒▒▓██▓░▒▒▒▓▒░░░▓█▓▓           ]],
			[[             ██▓█▓▓██▓████▓▓▒░░▒░▒▓▓▓▒░▒▒▒░░▒░░▓▓             ]],
			[[              █████▓██▓▓▓███▓▓▒░▒▒█▓█▓▓▓▓▓▒░░▓▒▓              ]],
			[[                █▓█████████▓██▓▒▓██▓▓▓█▓▓▒▓▒░▒▒▒              ]],
			[[                     ████▓▓▒▓██▓▓▓▓▓█▓▓█▓▓▓▓▒▓▒               ]],
			[[                       ██▓▓▓▓█▓▓▓██▓▓▓▒▒▓██▓▓▓▓▓              ]],
			[[                      ▓████▓▓█▓▓█▓▓█▓▓▓▒▓█▓▓▓▓▒▓              ]],
			[[                      ▓██▓▓▓▒▓▓▓▓▓▒▓█▓▒▒▒▓▓▒▒▓▓▓              ]],
			[[                      █▓█████▓▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓               ]],
			[[                ▓██▓███▓████▓▓▓▓▓▓▓▒▓▓▓█▒▒▒▒█▓▓               ]],
			[[            ▓▓█▓▓██████▓▓█████▓█▓▓▓▓▓▓███▓▓▓█                 ]],
			[[      ▓▓▓▓█████▓▒██▓███▓▓██████████▓▓███▓▓▓█▓▓▓▓              ]],
			[[   ▓▓██▓▓▒▒▓▓▓██▒▒█▓▓██▓▓▓█████████████▓▒▒▓██▓▒▓▓▓▓           ]],
			[[  ▓▓▓▓████▓▒▓▓▓▓▒▒█▓▓▓▓▓▓▓████████████▓▒░▒███▓▓▒▓▓▓▓          ]],
			[[  ▓███▓▓▓▓██▒▒█▓▓▒█▓▒▓▓▓▓▓▓███████▓▓▒▒░░▒▓████▓▓▒▓▓▓▓▓▓▓▓     ]],
			[[ ▓▓▓▒▓██▓▓▒▒▓▓▒█▓▓█▓▒▒▓▓▓▒▓▓▓███▓▒▒▒▒▓▒░▒▒▓████▓▒▒▓▓▓▒▒▒▓▓▓▓  ]],
			[[▓▓▓▓▓▒▒▓███▓▒▓▓▓█▓██▒▒▒▓▓▓▒▒▓▓▓▓▓▓▒▒▒█▒░▒▒▒▓▓███▒▒▒▓▓▓▒░░▒██▓▓]],
			[[                                                              ]],
			quotes[math.random(#quotes)],
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			-- dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
			-- dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
			-- dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
			-- dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
			dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
		}

		require("alpha").setup(dashboard.opts)
	end,
}
