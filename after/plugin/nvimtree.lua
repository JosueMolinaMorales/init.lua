local api = require('nvim-tree.api')

local function opts(desc)
  return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

vim.keymap.set("n", "<leader>pf", ':NvimTreeFindFile<CR>') -- Find a file
vim.keymap.set("n", "<leader>pc", ':NvimTreeCollapse<CR>') -- Close folders
vim.keymap.set("n", "<leader>mn", api.marks.navigate.next)
vim.keymap.set("n", "<leader>mp", api.marks.navigate.prev)
vim.keymap.set("n", "<leader>ms", api.marks.navigate.select)
vim.keymap.set("n", "<leader>cd", api.tree.change_root_to_node, opts('CD'))
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
