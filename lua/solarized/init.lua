local M = {}

local config = {
  italic = true,
  bold = true,
  underline = true,
  undercurl = true,
  transparent = false,
}

function M.setup(opts)
  config = vim.tbl_extend("force", config, opts or {})
end

local function apply_groups(groups)
  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "solarized"

  local palette = require("solarized.palette")
  local groups = require("solarized.groups").setup(palette, config)
  apply_groups(groups)
end

return M
