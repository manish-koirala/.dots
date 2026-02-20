return {
	"mason-org/mason-lspconfig.nvim",
	opts = {},
	dependencies = {
		{ "mason-org/mason.nvim", opts = { ui = { icons = { package_installed= "✓", package_pending = "➜", package_uninstalled = "✗" } } } },
		{"neovim/nvim-lspconfig"}
	},
	config = function () 
		require("mason-lspconfig").setup {
			ensure_installed = { "lua_ls", "pyright", "clangd" },
			automatic_enable = {
				"lua_ls",
				"pyright",
				"clangd",
			}
		}
	end,
	
}
