vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('t', '<C-c>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('i', '<C-c>', '<Esc>')

vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*.lua',
  callback = function()
    vim.cmd [[%s/\s\+$//e]]
  end,
})

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>rw', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gi<Left><Left><Left>]], { desc = 'Replace word' })
vim.keymap.set('n', '<leader>rs', [[:%s/<C-r><C-w>/<C-r><C-w>/gi<Left><Left><Left>]], { desc = 'Replace string' })
vim.keymap.set('n', '<leader>x', '<cmd>.lua<CR>', { desc = 'Execute the current line' })
vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Execute the current file' })

vim.keymap.set('n', '<leader>jf', ':%!jq .<CR>', { desc = 'Format JSON' })
vim.keymap.set('n', '<leader>jm', ':%!jq -c .<CR>', { desc = 'Minify JSON' })
vim.keymap.set('n', '<leader>js', ':%!jq -c . | jq @json<CR>', { desc = 'Stringify JSON' })
vim.keymap.set('n', '<leader>ju', ':%!jq -r fromjson<CR>', { desc = 'Unstringify JSON' })

vim.keymap.set('n', ',tt', function()
  vim.cmd.new()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)
