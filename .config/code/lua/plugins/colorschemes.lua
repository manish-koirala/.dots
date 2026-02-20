return {
	{
	 "ribru17/bamboo.nvim",
	 lazy = false,
	 priority = 1000,
	 opts = {},
	 config = function () 
	 require('bamboo').load()
	 end
	},
	{
	 "folke/tokyonight.nvim",
	 lazy = false,
	 priority = 1000,
	 opts = {},
	}
}

