return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup({
      theme = 'doom',
      config = {
        header = {
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[]],
          [[ ██╗   ██╗  █████╗  ███████╗ ██╗  ██╗]],
          [[ ╚██╗ ██╔╝ ██╔══██╗ ██╔════╝ ██║  ██║]],
          [[  ╚████╔╝  ███████║ ███████╗ ███████║]],
          [[   ╚██╔╝   ██╔══██║ ╚════██║ ██╔══██║]],
          [[    ██║    ██║  ██║ ███████║ ██║  ██║]],
          [[    ╚═╝    ╚═╝  ╚═╝ ╚══════╝ ╚═╝  ╚═╝]],
          [[]],
          [[]],
        },
        week_header = {
          concat = true,
        },
        center = {
          {
            icon = ' ',
            desc = 'Open File Manager',
            action = 'Neotree toggle float',
            key = 'e'
          },
          {
            icon = ' ',
            desc = 'Find  File',
            action = 'Telescope find_files find_command=rg,--hidden,--files',
            key = 'f'
          },
          {
            icon = ' ',
            desc = 'Find  word',
            action = 'Telescope live_grep',
            key = 'g'
          },
          {
            icon = ' ',
            desc = 'Open Terminal',
            action = 'ToggleTerm',
            key = 't'
          },
        },
        footer = {}
      },
    })
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } }
}
