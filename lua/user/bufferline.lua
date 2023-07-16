local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then return end

bufferline.setup {
	options = {
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = false, -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		diagnostics_indicator = function(count, level, diagnostics_dict, context)
			return "(" .. count .. ")"
		end,
		offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		-- can also be a table containing 2 custom separators
		-- [focused and unfocused]. eg: { '|', '|' }
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		-- sort_by = 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
		--   -- add custom logic
		--   return buffer_a.modified > buffer_b.modified
		-- end
	},
	highlights = {
		-- perfect default fill and background
		--[[ fill = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ }, ]]
		--[[ background = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "dark" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ }, ]]

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
		-- not used
		--[[ duplicate_selected = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "normal" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "normal" }, ]]
		--[[ 	italic = true, ]]
		--[[ }, ]]
		--[[ duplicate_visible = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ 	italic = true, ]]
		--[[ }, ]]
		--[[ duplicate = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ 	italic = true, ]]
		--[[ }, ]]

		-- simple color in selected
		--[[ modified = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ }, ]]
		--[[ modified_selected = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "normal" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "normal" }, ]]
		--[[ }, ]]
		--[[ modified_visible = { ]]
		--[[ 	fg = { attribute = "fg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ }, ]]

		-- perfect separator color
		--[[ separator = { ]]
		--[[ 	fg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ }, ]]
		--[[ separator_selected = { ]]
		--[[ 	fg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ 	bg = { attribute = "bg", highlight = "tabline" }, ]]
		--[[ }, ]]
		--[[ separator_visible = { ]]
		--[[ 	fg = { attribute = 'bg', highlight = 'tabline' }, ]]
		--[[ 	bg = { attribute = 'bg', highlight = 'tabline' } ]]
		--[[ }, ]]

		indicator_selected = {
			fg = { attribute = "fg", highlight = "lspdiagnosticsdefaulthint" },
			bg = { attribute = "bg", highlight = "tabline" },
		},
	},
}
