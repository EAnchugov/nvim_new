return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- Рекомендуется для Neo-tree
	config = function(_, opts)
		-- Глобальный keymap (ваш код)
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", { noremap = true, silent = true })

		-- Настройка плагина (opts автоматически сливаются с lazy.nvim)
		require("neo-tree").setup(opts or {
			sources = { "filesystem", "buffers", "git_status" },
			filesystem = {
				window = {
					position = "left",
					width = 30,
					mappings = {
						["l"] = "open",
						["h"] = "close_node",
						["a"] = "add",
						["d"] = "delete",
						["r"] = "rename",
					},
				},
			},
		})
	end,
	-- opts = {}  -- Опционально: здесь базовые настройки, config их подхватит
}
