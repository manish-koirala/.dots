return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function () 
	require'nvim-treesitter'.install { 'rust', 'javascript', 'zig', 'c', 'python', 'markdown', 'lua', 'vim', 'vimdoc', 'typescript'}
  end,
}
