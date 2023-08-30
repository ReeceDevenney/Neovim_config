vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.wrap = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.showmatch = true
vim.opt.smartcase = true
vim.opt.hlsearch = false

vim.opt.colorcolumn = '80'

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.scrolloff = 8

vim.opt.cursorcolumn = true
vim.opt.cursorline = true

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.js", "*.ts", "*.rs", "*.go", "*.lua", "*.c", "*.cpp", "*.h" },
    callback = function()
        vim.lsp.buf.format()
    end
})
