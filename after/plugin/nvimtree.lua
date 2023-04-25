vim.keymap.set("n", "<leader>pf", ':NvimTreeFindFile<CR>') -- Find a file
vim.keymap.set("n", "<leader>pc", ':NvimTreeCollapse<CR>') -- Close folders
vim.keymap.set("n", "<leader>mn", require("nvim-tree.api").marks.navigate.next)
vim.keymap.set("n", "<leader>mp", require("nvim-tree.api").marks.navigate.prev)
vim.keymap.set("n", "<leader>ms", require("nvim-tree.api").marks.navigate.select)
-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  git = {
      ignore = false
  }
})
