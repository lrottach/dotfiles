-- Flash: Navigate your code with search labels, enhanced character motions and Treesitter integration
-- https://github.com/folke/flash.nvim

return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
  keys = {
    { 's', mode = { 'n', 'x', 'o' }, function() require('flash').jump() end, desc = 'Flash' },
    { 'S', mode = { 'n', 'x', 'o' }, function() require('flash').treesitter() end, desc = 'Flash Treesitter' },
  },
}