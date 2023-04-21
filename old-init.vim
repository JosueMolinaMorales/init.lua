set showmatch
set ignorecase
set mouse=v
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
syntax on
set mouse=a
set ttyfast
set relativenumber
call plug#begin("~/.vim/plugged")
    Plug 'f-person/git-blame.nvim'
    Plug 'dracula/vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'folke/trouble.nvim'
    Plug 'honza/vim-snippets'
    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'mhinz/vim-startify'
"    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" COC Config
"function! CheckBackspace() abort
 " let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction
" Navigate lists of commands using tab
" inoremap <silent><expr> <Tab>
"      \ coc#pum#visible() ? coc#pum#next(1) :
"      \ CheckBackspace() ? "\<Tab>" :
"      \ coc#refresh()
" To confirm an auto complete, press enter
"inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Telescope config
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" Fixes the issue where nvim tree was not working properly
lua require'nvim-tree'.setup {}

nnoremap <leader>wm <C-W>w
nnoremap <leader>xx <cmd>TroubleToggle<cr>

lua << EOF
    require("trouble").setup {
        -- settings without a patched font or icons
        icons = false,
        fold_open = "v", -- icon used for open folds
        fold_closed = ">", -- icon used for closed folds
        indent_lines = false, -- add an indent guide below the fold icons
        signs = {
            -- icons / text used for a diagnostic
            error = "error",
            warning = "warn",
            hint = "hint",
            information = "info"
        },
        use_diagnostic_signs = true -- enabling this will use the signs defined in your lsp client
    }
    local nvim_lsp = require'lspconfig'

local on_attach = function(client)
    require'completion'.on_attach(client)
end

nvim_lsp.rust_analyzer.setup({
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})
