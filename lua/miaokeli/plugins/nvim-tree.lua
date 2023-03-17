local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree ducumentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#BD93F9]])

nvimtree.setup({
	-- change folder arrow icons
	renderer = {
		-- icons = {
		-- 	glyphs = {
		-- 		folder = {
		-- 			arrow_closed = "", -- arrow when folder is closed
		-- 			arrow_open = "", -- arrow when folder is open
		-- 		},
		-- 	},
		-- },
		icons = {
			show = {
				file = true,
				folder_arrow = false,
				git = true,
			},
		},
		indent_width = 1,
		indent_markers = {
			enable = true,
			inline_arrows = false,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
