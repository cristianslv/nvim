vim.keymap.set('n', '<leader>dt', function()
  require('dap-go').debug_test()
end, { desc = 'Debug Go test under cursor' })
