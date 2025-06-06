return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
      vim.keymap.set('n', '<C-p>', builtin.git_files, {})
      vim.keymap.set('n', '<leader>ps', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end, {})

      -- Make Telescope transparent
      vim.cmd [[
        hi TelescopeNormal guibg=NONE ctermbg=NONE
        hi TelescopeBorder guibg=NONE ctermbg=NONE
        hi TelescopePromptNormal guibg=NONE ctermbg=NONE
        hi TelescopePromptBorder guibg=NONE ctermbg=NONE
        hi TelescopeResultsNormal guibg=NONE ctermbg=NONE
        hi TelescopeResultsBorder guibg=NONE ctermbg=NONE
        hi TelescopePreviewNormal guibg=NONE ctermbg=NONE
        hi TelescopePreviewBorder guibg=NONE ctermbg=NONE
      ]]
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extension = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  },
}
