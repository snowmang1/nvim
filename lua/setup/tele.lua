-- telescope setup
require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

local map = vim.api.nvim_set_keymap
local nore_opts = { noremap = true, silent = true }
map('n', '<leader>tff', '<cmd>Telescope find_files<cr>', nore_opts)
map('n', '<leader>tfg', '<cmd>Telescope live_grep<cr>', nore_opts)
map('n', '<leader>tfb', '<cmd>Telescope buffers<cr>', nore_opts)
map('n', '<leader>tfh', '<cmd>Telescope help_tags<cr>', nore_opts)

