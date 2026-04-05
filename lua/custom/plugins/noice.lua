return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  dependencies = {
    'MunifTanjim/nui.nvim',
    -- 'rcarriga/nvim-notify',
  },
  config = function()
    require('noice').setup {
      cmdline = {
        view = 'cmdline',
        format = {
          cmdline = { icon = '' },
        },
      },
      -- views = {
      --   cmdline_popup = {
      --     border = {
      --       style = 'none',
      --       padding = { 2, 3 },
      --     },
      --     filter_options = {},
      --     win_options = {
      --       winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder',
      --     },
      --   },
      -- },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          -- ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
      },
    }
  end,
}
