vim.g.mapleader = ";"
vim.keymap.set("n", "<leader>pv", ':NvimTreeToggle<CR>')

-- Window Movement
vim.keymap.set({"n" ,"v", "i"}, "<leader>wmm", '<C-W>w') -- Move to the next winodow
vim.keymap.set({"n", "v", "i"}, "<leader>wmh", '<C-W>h') -- Move to the window on the left
vim.keymap.set({"n", "v", "i"}, "<leader>wmj", '<C-W>j') -- Move to the window below
vim.keymap.set({"n", "v", "i"}, "<leader>wml", '<C-W>l') -- Move to the window right
vim.keymap.set({"n", "v", "i"}, "<leader>wmk", '<C-W>k') -- Move to the window above
-- Leave the terminal, won't close it
vim.keymap.set("t", "<C-space>", '<C-\\><C-n>')
-- Open a terminal at the bottom of the screen
vim.keymap.set({"n", "i"}, "<leader>term", ':belowright split term://zsh<CR>')
