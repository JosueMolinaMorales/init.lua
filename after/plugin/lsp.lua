local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'rust_analyzer',
    'pylsp' 
})

lsp.setup()
require('luasnip.loaders.from_vscode').lazy_load()
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
cmp.setup({

    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable() 
          -- they way you will only jump inside the snippet region
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          else
            fallback()
          end
        end, { "i", "s" }),

    })
    -- mapping = {
    --    ['<Tab>'] = cmp_action.tab_complete(),
    --    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    --    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    --    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
    -- }


})
