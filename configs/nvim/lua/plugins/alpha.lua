return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                           ",
			" ██╗  ██╗ █████╗ ██╗   ██╗███╗   ██╗ ",
			" ██║ ██╔╝██╔══██╗██║   ██║████╗  ██║ ",
			" █████╔╝ ███████║██║   ██║██╔██╗ ██║ ",
			" ██╔═██╗ ██╔══██║██║   ██║██║╚██╗██║ ",
			" ██║  ██╗██║  ██║╚██████╔╝██║ ╚████║ ",
			" ╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ",
			"                                           ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("s", "󰊄  Search text", ":Telescope live_grep <CR>"),
			dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}

		local padding = {
			type = "padding",
			val = 15,
		}

		dashboard.section.footer.val = "Making it worse before it gets better."
		dashboard.section.footer.opts.hl = "Comment"

		dashboard.config.layout = {
			{ type = "padding", val = 2 },
			dashboard.section.header,
			{ type = "padding", val = 8 },
			dashboard.section.buttons,
			{ type = "padding", val = 8 },
			dashboard.section.footer,
		}

		alpha.setup(dashboard.opts)
	end,
}
