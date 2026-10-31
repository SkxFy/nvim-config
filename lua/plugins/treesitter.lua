 return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
	highlight = {
	    enable = true,
	},
	indent = { enable = true },
	autotag = { enable =  true },
	ensure_installed = { "c", "lua", "typescript", "java", "markdown" },
	auto_installed = false,
    })
  end
}
