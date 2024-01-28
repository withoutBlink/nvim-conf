local M = {
	"echasnovski/mini.bufremove",
	keys = function()
		return {
			{
				"<leader>c",
				function()
					local bd = require("mini.bufremove").delete
					local trb = require("trouble")
					if trb.is_open() then
						trb.close()
					end
					if vim.bo.modified then
						local choice =
							vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
						if choice == 1 then -- Yes
							vim.cmd.write()
							bd(0)
						elseif choice == 2 then -- No
							bd(0, true)
						end
					else
						bd(0)
					end
				end,
				desc = "Delete Buffer",
			},
			{
				"<leader>C",
				function()
					require("trouble").close()
					require("mini.bufremove").delete(0, true)
				end,
				desc = "Delete Buffer (Force)",
			},
		}
	end,
}

return M
