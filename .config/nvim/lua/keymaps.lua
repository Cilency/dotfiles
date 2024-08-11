-- set the leader key for keymaps
vim.g.mapleader = " "
-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
-- tab management
vim.keymap.set("n", "<leader><tab><tab>", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader><tab>x", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader><tab>]", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader><tab>[", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader><tab>c", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
-- navigate vim panes
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
-- escape with jk keys in insert mode
vim.keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })
-- Oil hotkey
vim.keymap.set("n", "<leader>o", "<cmd>Oil --float<CR>", { desc = "Open directory in oil" }) --  move current buffer to new tab
-- Open lazy hotkey
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", { desc = "Open Lazy" }) --  move current buffer to new tab
-- Mason hotkey
vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", { desc = "Open Mason" }) --  move current buffer to new tab
