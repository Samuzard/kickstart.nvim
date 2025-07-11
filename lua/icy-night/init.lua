local M = {}

--[[
  bg = '#1e1e2e', 
  fg = '#cdd6f4',
  red = '#f38ba8',
  green = '#a6e3a1',
  yellow = '#f9e2af',
  blue = '#89b4fa',
  magenta = '#f5c2e7',
  cyan = '#94e2d5',
  gray = '#6c7086',
]]

local c = {
  background = '#1e1e2e', -- Renamed from 'bg' for clarity
  foreground = '#fefae0', -- Renamed from 'fg' for clarity
  red = '#f38ba8',
  green = '#a6e3a1',
  yellow = '#f9e2af',
  blue = '#415a77',
  magenta = '#f5c2e7',
  cyan = '#94e2d5',
  gray = '#6c7086',
  -- Added all the missing keys below
  comment = '#6c7086', -- Using your gray color
  orange = '#f9af72', -- A reasonable orange
  border = '#3a4a61', -- A darker shade of blue/bg
  selection = '#457b9d', -- Using your 'highlight' color
  warning = '#f9e2af', -- Using your yellow color
  hint = '#94e2d5', -- Using your cyan color
}

function M.colorscheme()
  vim.cmd 'highlight clear'
  vim.cmd 'syntax reset'

  vim.o.background = 'dark'
  vim.g.colors_name = 'icy-night'

  local set = vim.api.nvim_set_hl

  -- Base UI
  set(0, 'Normal', { fg = c.foreground, bg = c.background })
  set(0, 'NormalFloat', { fg = c.foreground, bg = c.background })
  set(0, 'FloatBorder', { fg = c.border, bg = c.background })
  set(0, 'CursorLine', { bg = c.selection })
  set(0, 'Visual', { bg = '#3b3f55' }) -- slightly stronger than selection, for visibility
  set(0, 'Search', { fg = c.background, bg = c.orange })
  set(0, 'IncSearch', { fg = c.background, bg = c.orange })
  set(0, 'StatusLine', { fg = c.foreground, bg = c.selection })
  set(0, 'StatusLineNC', { fg = c.comment, bg = c.selection })
  set(0, 'VertSplit', { fg = c.border })
  set(0, 'WinSeparator', { fg = c.border })
  set(0, 'LineNr', { fg = c.blue })
  set(0, 'CursorLineNr', { fg = c.orange, bold = true })
  set(0, 'SignColumn', { bg = c.background })
  set(0, 'Folded', { fg = c.comment, bg = c.selection })

  -- Popup Menu
  set(0, 'Pmenu', { fg = c.foreground, bg = c.selection })
  set(0, 'PmenuSel', { fg = c.background, bg = c.orange })
  set(0, 'PmenuSbar', { bg = c.selection })
  set(0, 'PmenuThumb', { bg = c.orange })

  -- Syntax
  set(0, 'Comment', { fg = c.comment, italic = true })
  set(0, 'Constant', { fg = c.magenta })
  set(0, 'String', { fg = c.green })
  set(0, 'Identifier', { fg = c.cyan })
  set(0, 'Function', { fg = c.yellow })
  set(0, 'Statement', { fg = c.red })
  set(0, 'Type', { fg = c.cyan })
  set(0, 'Special', { fg = c.magenta })
  set(0, 'Error', { fg = c.red, bold = true })
  set(0, 'Keyword', { fg = c.red })
  set(0, 'TSKeyword', { fg = c.red })
  set(0, 'TSFunction', { fg = c.yellow })
  set(0, 'TSVariable', { fg = c.foreground })
  set(0, 'TSType', { fg = c.cyan })

  -- Diagnostics
  set(0, 'DiagnosticError', { fg = c.red })
  set(0, 'DiagnosticWarn', { fg = c.warning })
  set(0, 'DiagnosticInfo', { fg = c.green })
  set(0, 'DiagnosticHint', { fg = c.hint })
  set(0, 'DiagnosticUnderlineError', { undercurl = true, sp = c.red })
  set(0, 'DiagnosticUnderlineWarn', { undercurl = true, sp = c.warning })
  set(0, 'DiagnosticUnderlineInfo', { undercurl = true, sp = c.green })
  set(0, 'DiagnosticUnderlineHint', { undercurl = true, sp = c.hint })

  -- Neo-tree
  set(0, 'NeoTreeNormal', { fg = c.foreground, bg = c.background })
  set(0, 'NeoTreeNormalNC', { fg = c.foreground, bg = c.background })
  set(0, 'NeoTreeDirectoryName', { fg = c.blue })
  set(0, 'NeoTreeDirectoryIcon', { fg = c.blue })
  set(0, 'NeoTreeFileName', { fg = c.foreground })
  set(0, 'NeoTreeFileIcon', { fg = c.foreground })
  set(0, 'NeoTreeFileNameOpened', { fg = c.green })
  set(0, 'NeoTreeIndentMarker', { fg = c.comment })
  set(0, 'NeoTreeExpander', { fg = c.comment })
  set(0, 'NeoTreeRootName', { fg = c.blue, bold = true })
  set(0, 'NeoTreeGitAdded', { fg = c.green })
  set(0, 'NeoTreeGitDeleted', { fg = c.red })
  set(0, 'NeoTreeGitModified', { fg = c.yellow })
  set(0, 'NeoTreeGitConflict', { fg = c.orange })
  set(0, 'NeoTreeGitUntracked', { fg = c.comment })
  set(0, 'NeoTreeGitIgnored', { fg = c.comment })
  set(0, 'NeoTreeGitStaged', { fg = c.green })
end

return M
