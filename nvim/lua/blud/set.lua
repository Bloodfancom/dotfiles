if os.getenv("OS") == "Windows_NT" then
    vim.opt.shell = '"C:/Program Files/PowerShell/7/pwsh.exe"'
    vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command '
    vim.opt.shellxquote = ''
    vim.opt.shellquote = ''
    vim.opt.shellredir = '2>&1 | Out-File -Encoding UTF8 %s'
    vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s'
end
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir =os.getenv("OS")=="Windows_NT"
                and "C:\\Dev\\.vim\\undodir"
                or  os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
