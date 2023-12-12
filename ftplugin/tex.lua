local bo = vim.bo

bo.expandtab = false
bo.tabstop = 2
bo.shiftwidth = 2

vim.keymap.set('n', '<Leader>T', '<cmd>!texcomp open<cr>')
