require("lazy").setup({
  require "cristianslv.plugins.todo-comments",
  require "cristianslv.plugins.guess-indent",
  require "cristianslv.plugins.tokyonight",
  require "cristianslv.plugins.telescope",
  require "cristianslv.plugins.autopairs",
  require "cristianslv.plugins.gitsigns",
  require "cristianslv.plugins.lazydev",
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

require('guess-indent').setup {}
