local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name.
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key.
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n"
--   insert_mode = "i"
--   visual_mode = "v"
--   visual_block_mode = "x"
--   term_mode = "t"
--   command_mode = "c"

-- NORMAL MODE --

-- Better window navigation.
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Navigate window size with arrow keys.
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffered windows.
keymap("n",  "<S-l>", ":bnext<CR>", opts)
keymap("n",  "<S-h>", ":bprevious<CR>", opts)

-- RemedyBG keymaps.
keymap("n", "<F6>", ":call RemedyBGOpenFile()<CR><CR>", term_opts)
keymap("n", "<F5>", ":call RemedyBGStartDebugging()<CR><CR>", term_opts)
keymap("n", "<S-F5>", ":call RemedyBGStopDebugging()<CR><CR>", term_opts)
keymap("n", "<F9>", ":call RemedyBGAddBreakpointAtFile()<CR><CR>", term_opts)
keymap("n", "<C-F10>", ":call RemedyBGRunToCursor()<CR><CR>", term_opts)

-- Telescope keymaps.
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts) -- The live grep requires 'ripgrep' to be installed on the machine

-- INSERT MODE --

-- Press jk fast to go back into normal mode.
keymap("i", "jk", "<ESC>", opts)

-- VISUAL MODE --

-- Stay in indent mode to keep indenting.
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text block up and down.
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Keep original yanked item in clipboard when pasting over a selected thingy.
keymap("v", "p", '"_dP', opts)

-- VISUAL BLOCK MODE --

-- Move text block up and down.
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal Mode --

-- Better terminal navigation.
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
