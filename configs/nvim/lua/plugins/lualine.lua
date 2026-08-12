return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"catppuccin/nvim",
	},
	config = function()
		local status_ok, transparent_theme = pcall(require, "lualine.themes.catppuccin")

		if not status_ok then
			require("lualine").setup()
			return
		end

		local modes = { "normal", "insert", "visual", "replace", "command", "inactive" }
		for _, mode in ipairs(modes) do
			if transparent_theme[mode] and transparent_theme[mode].c then
				transparent_theme[mode].c.bg = "NONE"
			end
		end

		require("lualine").setup({
			options = {
				theme = transparent_theme,
				component_separators = "|",
				section_separators = "",
			},
		})
	end,
}
