-- return {
--  "catppuccin/nvim",
--  name = "catppuccin",
--  priority = 1000,
--  config = function()
--    vim.cmd.colorscheme "catppuccin"
--  end
-- }

return {
  "mellow-theme/mellow.nvim",
  name = "mellow",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "mellow"

    -- Neovim background transparent
    vim.cmd [[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi EndOfBuffer guibg=NONE ctermbg=NONE
      hi SignColumn guibg=NONE ctermbg=NONE
      hi LineNr guibg=NONE ctermbg=NONE
    ]]

  end
}
