local gh = function(x) return 'https://github.com/' .. x end
local cb = function(x) return 'https://codeberg.org/' .. x end

vim.pack.add({
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    gh('tpope/vim-surround')
})
