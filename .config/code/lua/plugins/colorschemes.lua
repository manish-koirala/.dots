return {
	{
	 "ribru17/bamboo.nvim",
	 lazy = false,
	 priority = 1000,
	 opts = {},
	},
	{
	 "folke/tokyonight.nvim",
	 lazy = false,
	 priority = 1000,
	 config = function () 
		require('tokyonight').load()
	 end,
	 opts = {},
	}
}

