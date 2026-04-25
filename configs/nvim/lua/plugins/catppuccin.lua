return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			custom_highlights = function(colors)
				return {
					Pmenu = { bg = "NONE" },
					NormalFloat = { bg = "NONE" },
					FloatBorder = { bg = "NONE" },
				}
			end,
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
