vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

local dap = require('dap')
dap.configurations.java = dap.configurations.java or {}

vim.keymap.set('n', '<F5>', function() 
  require('dap').continue({ new = false }) 
end)


