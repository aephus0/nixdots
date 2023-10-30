local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<space>", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Better window movement

keymap("n", "<C-h>", ":TmuxNavigatorLeft<CR>", opts)
keymap("n", "<C-j>", ":TmuxNavigatorDown<CR>", opts)
keymap("n", "<C-k>", ":TmuxNavigatorUp<CR>", opts)
keymap("n", "<C-l>", ":TmuxNavigatorRight<CR>", opts)

-- Navigate buffers

keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<leader>x", ":bw<CR>", opts)

keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)


keymap("n", "<M-k>", ":m .-2<CR>==", opts)
keymap("n", "<M-j>", ":m .+1<CR>==", opts)
keymap("v", "p", '"_dP"', opts)

-- indenting

keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Visal block

keymap("x", "<M-j>", ":m '>+1<CR>gv-gv", opts)
keymap("x", "<M-k>", ":m '<-2<CR>gv-gv", opts)

keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<C-l>", "<Right>", opts)
