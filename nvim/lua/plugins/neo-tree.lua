return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        },
      },
      window = {
        position = "right",
        mappings = {
          ["<S-CR>"] = "open_vsplit",
          ["<CR>"] = "open",
        },
      },
    })

    vim.keymap.set("n", "<leader>n", ":Neotree toggle left<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<C-b>", ":Neotree focus<CR> left", { noremap = true, silent = true })
  end,
}
