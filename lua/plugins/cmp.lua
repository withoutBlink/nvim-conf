vim.keymap.set("i", "<Tab>", function()
  -- Check if native completion popup menu is open
  if vim.fn.pumvisible() == 1 then
    -- <C-y> accepts the currently selected completion item
    return "<C-y>"
  elseif vim.snippet and vim.snippet.active({ direction = 1 }) then
    vim.snippet.jump(1)
    return ""
  else
    return "<Tab>"
  end
end, { expr = true, remap = false, desc = "Confirm completion or jump snippet with Tab" })

return {}
