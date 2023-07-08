local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then return end

bufferline.setup {
	options = {
		numbers = "none",      -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
		modified_icon = "●",
		diagnostics = "nvim_lsp", -- | "nvim_lsp" | "coc",
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		always_show_bufferline = true,
	},
}
