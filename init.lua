require("miaokeli.plugins-setup")
require("miaokeli.core.options")
require("miaokeli.core.keymaps")
require("miaokeli.core.colorscheme")
require("miaokeli.plugins.comment")
require("miaokeli.plugins.nvim-tree")
require("miaokeli.plugins.lualine")
require("miaokeli.plugins.telescope")
require("miaokeli.plugins.nvim-cmp")
require("miaokeli.plugins.lsp.mason")
require("miaokeli.plugins.lsp.lspsaga")
require("miaokeli.plugins.lsp.lspconfig")
require("miaokeli.plugins.lsp.null-ls")
require("miaokeli.plugins.autopairs")
require("miaokeli.plugins.treesitter")
require("miaokeli.plugins.gitsigns")
require("miaokeli.plugins.debugger")
require("neoscroll").setup()

vim.api.nvim_command("autocmd FileType html set filetype=html.javascript")
vim.g.packager = {
	git = {
		clone_timeout = 600,
		default_url_format = "ssh://github.com/%s",
	},
}

vim.cmd("set foldmethod=indent") -- 设置折叠方式为indent
vim.cmd("set foldlevelstart=99") -- 设置默认展开级别为99

require("colorizer").setup()
