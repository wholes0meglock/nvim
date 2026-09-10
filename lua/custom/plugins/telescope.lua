return {
  {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'mingw32-make' },
      'nvim-telescope/telescope-file-browser.nvim',
    },
    config = function()
      local telescope = require('telescope')

      telescope.setup({
        extensions = {
          file_browser = {
            hijack_netrw = true,
          },
        },
      })

      telescope.load_extension('fzf')
      telescope.load_extension('file_browser')
    end,
  },
}