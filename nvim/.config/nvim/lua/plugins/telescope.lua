return
{
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>pf', function() require('telescope.builtin').find_files() end, desc = 'Find Files' },
    { '<C-p>', function() require('telescope.builtin').git_files() end, desc = 'Git Files' },
    { '<leader>ps', function() require('telescope.builtin').grep_string({ search = vim.fn.input("Grep > ") }) end, desc = 'Grep Search' },
    { '<leader>vh', function() require('telescope.builtin').help_tags() end, desc = 'Help Tags' },
  },
}

