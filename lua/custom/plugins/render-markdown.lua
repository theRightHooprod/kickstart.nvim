return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = function()
      require('render-markdown').setup {
        latex = {
          enabled = false,
          -- render_modes = true,
          converter = { 'utftex', 'latex2text' },
          -- top_pad = 1,
          -- bottom_pad = 1,
          -- position = 'above',
        },
        code = {
          enabled = true,
          language = false,
          disable_background = { 'latex' },
        },
        completions = {
          -- Settings for blink.cmp completions source
          blink = { enabled = true },
          -- Settings for in-process language server completions
          lsp = { enabled = true },
        },
      }
    end,
  },
}
