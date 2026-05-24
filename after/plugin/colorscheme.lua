-- Protected call in case the package path isn't loaded yet
local status, _ = pcall(vim.cmd.colorscheme, "catppuccin")
if not status then
    print("Colorscheme not found!")
end
--vim.cmd('colorscheme catppuccin-mocha')


