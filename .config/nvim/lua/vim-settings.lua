vim.g.netrw_liststyle = 3
-- settings related to tabs and idents
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.autoindent = true
vim.opt.backspace = "indent,eol,start"
-- line number settings
vim.opt.nu = true
vim.opt.relativenumber = true
-- to make file search act like ctr-f
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- keep 8 lines above me unless at end of file
vim.opt.scrolloff = 8
-- make sure colors are nice
vim.opt.termguicolors = true
vim.opt.background = "dark"
-- forgot what this is but im keeping it i'll google later
vim.opt.updatetime = 500
-- make a colomn to keep lines at a max length
vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"
-- move text in v mode with shift- J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- use sytem clipbaord
vim.opt.clipboard:append("unnamedplus")
-- split vim panes
vim.opt.splitright = true
vim.opt.splitbelow = true
-- disable line wrapping
vim.opt.wrap = false
-- undo options
vim.opt.undofile = true
vim.opt.undolevels = 10000
