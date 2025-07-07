vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.colorcolumn = "100"
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.g.have_nerd_font = true

vim.opt.mouse = "a"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.confirm = true
--vim.opt.updatetime = 250
--vim.opt.timeoutlen = 300
vim.opt.inccommand = "split"
vim.opt.isfname:append("@-@")

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.guicursor = ""

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)
