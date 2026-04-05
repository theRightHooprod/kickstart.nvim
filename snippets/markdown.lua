local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

return {
  s('cover', {
    t {
      '**Universidad Autónoma de Guadalajara**  ',
      '**Nombre del alumno:** `Rodrigo Manuel Cobos Rodríguez.`  ',
      '**Código UAG:** `5277254.`  ',
      '___  ',
    },
  }),

  s('newpage', {
    t {
      '\\newpage',
      '\\setcounter{equation}{0}',
    },
  }),
}
