local function get_full_file_path() 
    return vim.api.nvim_buf_get_name(0)
end

require('lualine').setup {
    options = { theme = 'gruvbox' },
    sections = { lualine_c = { get_full_file_path } }
}
