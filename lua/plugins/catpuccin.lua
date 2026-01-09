return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			custom_highlights = function(colors)
				return {}
			end,
		})
		vim.cmd.colorscheme("catppuccin-frappe")
	end,
}
