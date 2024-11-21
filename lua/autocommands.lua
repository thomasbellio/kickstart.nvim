-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- set the tabstop and shiftwidth for go files

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = true
  end,
})

-- vim.api.nvim_create_autocmd('BufWritePost', {
--   pattern = '*.php',
--   group = vim.api.nvim_create_augroup('php_cs_fixer', { clear = true }),
--   command = 'silent! !php-cs-fixer check %',
--   desc = 'Run php-cs-fixer on save',
-- })
