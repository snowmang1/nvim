-- nvim tree setup

local map = {
	{ key = "<2-RightMouse>", action = ""},
	{ key = "<2-LeftMouse>", action = ""},
	{ key = "<C-k>", action = ""},
	{ key = "<C-i>", action = "toggle_file_info"},
}

require'nvim-tree'.setup {
	view = {
    adaptive_size = true,
    mappings = {
      list = map,
    },
  }
}

