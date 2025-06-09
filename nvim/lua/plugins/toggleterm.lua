return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({

			size = 20,
			open_mapping = [[<C-t>]],
			direction = "float",

			float_opts = {
				border = "curved",
        width = 80,
				height = 25,
				zindex = 50,
				title = "Floating Terminal",
				title_pos = "center",
			},

			start_in_insert = true,
			close_on_exit = true,
			shade_terminals = true,
			persist_size = true,
			persist_mode = true,
			auto_scroll = true,
			shell = vim.o.shell,
		})

    -- keybinding for diffrent layouts
    vim.api.nvim_set_keymap("n", "<leader>tv", ":ToggleTerm size=50 direction=vertical<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>th", ":ToggleTerm size=10 direction=horizontal<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>tf", ":ToggleTerm size=50 direction=float<CR>", { noremap = true, silent = true })

	end,
}
