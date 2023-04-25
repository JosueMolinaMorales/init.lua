require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}

vim.cmd [[ highlight IndentBlanklineChar guifg=#5A5A5A gui=nocombine ]]
vim.cmd [[ highlight IndentBlanklineContextChar guifg=#cc241d gui=nocombine ]]
