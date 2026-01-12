-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  {
    'goolord/alpha-nvim',
    dependencies = {
      'echasnovski/mini.icons',
    },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      dashboard.section.header.val = {
        '█████████             ████████████████',
        '████████                ██████████████',
        '███████                   ████████████',
        '██████                  ██████████████',
        '██████    ██  █████████  █████████████',
        '█████  █ █████████████████████████████',
        '██████ ████                     ██████',
        '████               █ █                ',
        '██         █      █████               ',
        '           ██     ██  ██              ',
        '          █   ██   ██ ██              ',
        '            █  █████████             █',
        '            ████████████         █████',
        '             ██████████ █    █    ████',
        '              █ ██████   █ ████    ███',
        '              ██ █  █    █ █   █   ███',
        '███████    ██   ██     ███ █   █     █',
        '████████   ██  █ ███   ███ ███ ██     ',
        '█████████  █    █ ███   █  ██████     ',
        '█████████   ██ ███          ██   █    ',
      }

      dashboard.section.buttons.val = {
        dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
        dashboard.button('s', ' > Settings', ':e $MYVIMRC<CR>'),
      }

      alpha.setup(dashboard.opts)
    end,
  },
  {
    'nvim-flutter/flutter-tools.nvim',
    config = {
      dev_log = {
        focus_on_open = false,
      },
      decorations = {
        statusline = {
          app_version = true,
          device = true,
          project_config = false,
        },
      },
      widget_guides = {
        enabled = true,
      },
      dependencies = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim',
      },
    },
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },
  {
    'sphamba/smear-cursor.nvim',
    opts = {
      enabled = true,
      smear_between_buffers = false,
      stiffness = 0.6,
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.3,
    },
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
  },
}
