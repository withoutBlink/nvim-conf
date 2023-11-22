local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then return end

bufferline.setup {
	options = {
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return " " .. count .. "!"
		end,
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
	},
	highlights = {
		buffer_selected = {
			fg = { attribute = "fg", highlight = "tabline" },
			bg = { attribute = "bg", highlight = "tabline" },
		},
		buffer_visible = {
			fg = { attribute = "fg", highlight = "tabline" },
			bg = { attribute = "bg", highlight = "tabline" },
		},
		tab_selected = {
			fg = { attribute = "fg", highlight = "tabline" },
			bg = { attribute = "bg", highlight = "tabline" },
		},
		tab = {
			fg = { attribute = "fg", highlight = "tabline" },
			bg = { attribute = "bg", highlight = "tabline" },
		},
		indicator_selected = {
			fg = { attribute = "fg", highlight = "lspdiagnosticsdefaulthint" },
			bg = { attribute = "bg", highlight = "tabline" },
		},
	},
}
