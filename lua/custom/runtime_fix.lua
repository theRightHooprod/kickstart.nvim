-- ~/.config/nvim/lua/custom/runtime_fix.lua
local M = {}
function M.setup()
  local prog_path = 'C:\\Program\\ Files\\Neovim\\share\\nvim\\runtime'
  if not vim.o.runtimepath:match(prog_path) then
    vim.o.runtimepath = vim.o.runtimepath .. ',' .. prog_path
  end
  vim.env.NVIM_TUTORIAL_PATH = 'C:\\Program Files\\Neovim\\share\\nvim\\runtime\\doc\\tutor.md'
end
return M
