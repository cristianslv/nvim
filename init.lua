vim.api.nvim_create_autocmd('User', {
  pattern = 'VeryLazy',
  callback = function()
    local vue_ls_path = vim.fn.expand '$MASON/packages/vue-language-server'
    local vue_plugin_path = vue_ls_path .. '/node_modules/@vue/language-server'

    -- vim.notify 'Plugins carregados com sucesso 🚀'
    vim.notify(vue_plugin_path)
  end,
})
require 'cristianslv'
