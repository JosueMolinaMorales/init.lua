vim.g.mapleader = ";"
vim.keymap.set("n", "<leader>pv", ':NvimTreeToggle<CR>')
vim.keymap.set({"n" ,"v", "i"}, "<leader>wm", '<C-W>w')
-- Leave the terminal, won't close it
vim.keymap.set("t", "<C-space>", '<C-\\><C-n>')
-- Open a terminal at the bottom of the screen
vim.keymap.set({"n", "i"}, "<leader>term", ':belowright split term://zsh<CR>')
