return {
  'lewis6991/hover.nvim',
  config = function()
    require('hover').setup {
      init = function()
        require 'hover.providers.lsp'
      end,
      title = true,
    }
    vim.keymap.set('n', '<leader>k', require('hover').hover, { desc = 'LSP context' })
  end,
}
