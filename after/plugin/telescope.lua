local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gr', builtin.live_grep, {})
require('telescope').setup {
    defaults = {
        initial_mode = "normal",
        layout_config = {
            preview_width = .70
        }
    }

}
