return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function () 
	require('lualine').setup {
    		-- some popular themes: wombat, gruvbox, powerline, palenight, papercolor_dark, onedark, modus-vivendi
		options = { theme = 'onedark' }
		}
    end,
}
