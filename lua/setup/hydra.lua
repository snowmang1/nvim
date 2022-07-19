-- default
local Hydra = require('hydra')

Hydra({
    name = "hydra",
    hint = [[false]], -- multiline string
    -- config = ,
    mode = 'n',
    body = '<leader>o',
    heads = 'lhs',
})
