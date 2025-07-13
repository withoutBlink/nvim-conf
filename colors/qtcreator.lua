vim.cmd("highlight clear")
if vim.fn.has("syntax_on") then vim.cmd("syntax reset") end
vim.g.colors_name = "qtcreator"
vim.o.background = "dark"
vim.opt.termguicolors = true

local palette = {
  bg = "#2e2f30",
  bg_light = "#333334",
  fg = "#d6cf9a",
  ws = "#4c4d50",
  linenr_bg = "#404244",
  cc_bg = "#3b3c3c",

  reddark = "#ff0000",
  red = "#ff8080",
  peach = "#d6bb9a",
  blue = "#9aa7d6",
  cyanlight = "#44c6d6",
  brown = "#d49445",
  darkbrown = "#8a602c",
  green = "#66a334",
  grey = "#a8abb0",
  pink = "#ff6aad",
  yellow = "#d6c540",
  purple = "#d69aa7",
  cyan = "#1d545c",
  cyandark = "#264146",
  greylight = "#bec0c2",

  debug_color = "#ff00ff",
}

local highlights = {
  Normal = { fg = palette.fg, bg = palette.bg },

  Cursor = { fg = palette.bg, bg = palette.fg },
  lCursor = { link = "Cursor" },
  CursorIM = { link = "Cursor" },
  TermCursor = { link = "Cursor" },
  CursorColumn = { fg = palette.bg, bg = palette.fg },
  ColorColumn = { bg = palette.cc_bg },
  PreProc = { fg = palette.pink },
  PreCond = { link = "PreProc" },
  LineNr = { fg = palette.greylight, bg = palette.linenr_bg },
  CursorLine = { bg = palette.bg_light },
  CursorLineNr = {
    fg = palette.yellow,
    bg = palette.linenr_bg,
    bold = true
  },
  Whitespace = { fg = palette.ws },
  Visual = { fg = palette.greylight, bg = palette.cyan },
  VisualNOS = { fg = palette.greylight, bg = palette.cyandark },
  MatchParen = { fg = palette.fg, bg = palette.cyandark },
  WinSeparator = { fg = palette.greylight, bg = palette.linenr_bg },
  ModeMsg = { fg = palette.greylight, bg = palette.linenr_bg },
  MsgArea = { fg = palette.greylight, bg = palette.linenr_bg },

  LspCodeLens = { fg = palette.greylight, bg = palette.cyan },
  LspReferenceRead = { bg = palette.cyandark },
  LspReferenceText = { bg = palette.cyandark },
  LspReferenceWrite = { bg = palette.cyandark },

  StatusLine = { fg = palette.greylight, bg = palette.linenr_bg },
  StatusLineNC = { link = "StatusLine" },
  StatusLineTerm = { link = "StatusLine" },
  StatusLineTermNC = { link = "StatusLine" },

  Boolean = { fg = palette.cyanlight, italic = true },
  Character = { fg = palette.brown },
  String = { fg = palette.brown },
  Define = { fg = palette.pink },
  Number = { fg = palette.darkbrown },
  Error = { fg = palette.reddark },
  Special = { fg = palette.brown },
  SpecialChar = { link = "Special" },
  Identifier = { fg = palette.fg },
  Type = { fg = palette.red },
  TypeDef = { fg = palette.cyanlight, bold = true },
  Macro = { fg = palette.pink },
  Include = { fg = palette.pink },
  Label = { fg = palette.yellow, bold = true },
  Statement = { fg = palette.cyanlight, italic = true },
  Keyword = { fg = palette.cyanlight, italic = true },
  Function = { fg = palette.fg },
  Operator = { fg = palette.peach },
  Comment = { fg = palette.grey, italic = true },
  Structure = { fg = palette.cyanlight, italic = true },
  Repeat = { fg = palette.cyanlight, italic = true },
  Conditional = { fg = palette.cyanlight, italic = true },
  Float = { link = "Number" },

  GitSignsAdd = { fg = palette.reddark, bg = "NONE" },
  GitSignsChange = { fg = palette.reddark, bg = "NONE" },
  GitSignsDelete = { fg = palette.reddark, bg = "NONE" },

  ["@variable"] = { fg = palette.fg },
  ["@variable.builtin"] = { fg = palette.cyanlight, italic = true },
  ["@variable.parameter"] = { fg = palette.peach },
  ["@variable.member"] = { fg = palette.peach },

  ["@constant"] = { fg = palette.fg },
  ["@constant.builtin"] = { fg = palette.cyanlight, italic = true },
  ["@constant.macro"] = { fg = palette.fg },

  ["@constructor"] = { fg = palette.fg, bold = true },

  ["@function"] = { link = "Function" },
  ["@function.macro"] = { fg = palette.fg, italic = false },
  ["@function.method"] = { link = "Function" },
  ["@function.call"] = { fg = palette.fg, bold = false },
  ["@function.method.call"] = { fg = palette.fg, bold = false },

  ["@type"] = { fg = palette.red },
  ["@type.builtin"] = { fg = palette.purple },
  ["@type.definition"] = { fg = palette.red, bold = true },

  ["@keyword.directive"] = { link = "Define" },
  ["@keyword.import"] = { link = "Include" },
  ["@keyword.directive.define"] = { link = "Define" },

  ["@punctuation.delimiter"] = { fg = palette.fg },
  ["@punctuation.bracket"] = { fg = palette.fg },
  ["@punctuation.special"] = { fg = palette.peach },

  ["@module"] = { fg = palette.red },
  ["@module.builtin"] = { fg = palette.cyanlight, italic = true },

  ["@lsp.type.macro"] = { fg = palette.fg },
  ["@lsp.type.variable"] = { fg = palette.peach },
  ["@lsp.type.enumMember"] = { fg = palette.green, italic = true },
  ["@lsp.type.property"] = { fg = palette.fg },
  ["@lsp.mod.definition"] = { bold = true },
}

for group, highlight in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, highlight)
end
