vim.lsp.enable('lua_ls')
vim.lsp.enable('elvish')
vim.lsp.enable('nim_langserver')
vim.lsp.enable('bashls')
-- Filtype add
vim.filetype.add({
    pattern = {
        ['.*'] = {
            function(path, bufnr)
                local content = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ''
                -- Native Lua pattern matching
                if content:match('^#!.*%f[%w]elvish%f[%W]') then
                    return 'elvish'
                elseif content:match('^#!.*%f[%w]nim%f[%W]') then
                    return 'nim'
                elseif content:match('^#!.*%f[%w]bash%f[%W]') or content:match('^#!.*%f[%w]sh%f[%W]') then
                    return 'sh'
                end
            end,
            { priority = -math.huge },
        },
    },
})

