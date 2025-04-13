return {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    require("noice").setup({
      presets = {
        bottom_search = false,
        command_palette = true,
      },
      notify = { enabled = true },
      cmdline = {
        enabled = true,
        view = "cmdline_popup",
      },
      messages = { enabled = true },
      popupmenu = { enabled = true },
    })
  end
}
