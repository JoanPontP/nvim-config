local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- netrw config
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_liststyle = 3

map("n", "<leader>gf", "<cmd>Ex<CR>", opts)

-- search through history
map("n", "q:", "q:?", opts)
map("n", "q/", "q/?", opts)

-- project search mappings
map("n", "<leader>lo", "<cmd>lopen<CR>", opts)
map("n", "<Down>", "<cmd>lnext<CR>zz", opts)
map("n", "<Up>", "<cmd>lprev<CR>zz", opts)
map("n", "<leader>lg", ":lvimgrep /<C-r><C-w>/gj **/*<Left><Left><Left><Left><Left><Left><Left><Left>", { noremap = true, silent = false })
-- map("n", "<leader>k", "<cmd>lnext<CR>zz", opts)
-- map("n", "<leader>j", "<cmd>lprev<CR>zz", opts)

map("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", opts)
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Too dificult to press
map("n", "gl", "$", opts)
map("n", "gh", "^", opts)

-- Keep search matches in the middle of the window
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Better window navigation
-- map("n", "<C-h>", "<C-w>h", opts)
-- map("n", "<C-j>", "<C-w>j", opts)
-- map("n", "<C-k>", "<C-w>k", opts)
-- map("n", "<C-l>", "<C-w>l", opts)

map("n", "<C-u>", "<C-u>zz", opts)
map("n", "<C-d>", "<C-d>zz", opts)

-- Resize with arrows
map("n", "<C-Up>", ":resize -2<CR>", opts)
map("n", "<C-Down>", ":resize +2<CR>", opts)
map("n", "<C-Left>", ":vertical resize +2<CR>", opts)
map("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Remove search highlight when pressing ESC
map("n", "<ESC>", ":nohl<ESC>", opts)

-- Insert --
-- Press jk fast to enter
map("i", "jk", "<ESC>", opts)
map("i", "jj", "<ESC>", opts)
map("i", "jk", "<ESC>", opts)

-- Visual
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Too dificult to press
map("v", "gl", "$", opts)
map("v", "gh", "^", opts)
-- Move text up and down
map("v", "<C-k>", ":m .-2<CR>gv-gv==", opts)
map("v", "<C-j>", ":m .+1<CR>gv-gv==", opts)
map("v", "p", '"_dP', opts)

-- Visual Block --
map("x", "J", ":move '>+1<CR>==gv-gv", opts)
map("x", "K", ":move '<-2<CR>==gv-gv", opts)
-- Move text up and down

-- Plugins
-- map('n', '<leader>gf', ':NvimTreeToggle<CR>', opts)
-- map('n', '<leader>c', ':NvimTreeFindFile<CR>', opts)

-- barbar mappings
-- Move to previous/next
map('n', '<TAB>', ':bn<CR>', opts)
map('n', '<S-TAB>', ':bp<CR>', opts)
-- Select from bufferlist
map('n', '<leader>b', ':buffers<CR>:buffer<Space>', opts)
-- Close buffer
map('n', '<C-q>', ':bd<CR>', opts)
-- Re-order to previous/next
-- map('n', '<A-<>', ':BufferMovePrevious<CR>', opts)
-- map('n', '<A->>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
-- map('n', '<A-1>', ':BufferGoto 1<CR>', opts)
-- map('n', '<A-2>', ':BufferGoto 2<CR>', opts)
-- map('n', '<A-3>', ':BufferGoto 3<CR>', opts)
-- map('n', '<A-4>', ':BufferGoto 4<CR>', opts)
-- map('n', '<A-5>', ':BufferGoto 5<CR>', opts)
-- map('n', '<A-6>', ':BufferGoto 6<CR>', opts)
-- map('n', '<A-7>', ':BufferGoto 7<CR>', opts)
-- map('n', '<A-8>', ':BufferGoto 8<CR>', opts)
-- map('n', '<A-9>', ':BufferGoto 9<CR>', opts)
-- map('n', '<A-0>', ':BufferLast<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
-- Magic buffer-picking mode
-- map('n', '<C-p>', ':BufferPick<CR>', opts)

-- Sort automatically by...
--map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>', opts)
--map('n', '<leader>bd', ':BufferOrderByDirectory<CR>', opts)
--map('n', '<leader>bl', ':BufferOrderByLanguage<CR>', opts)


-- Telescope
map('n', '<Leader>ff', '<cmd>lua require("telescope.builtin").find_files({hidden=true,no_ignore=true})<CR>', opts)
map('n', '<Leader>fg', '<cmd>lua require("telescope.builtin").live_grep({hidden=true,no_ignore=true})<CR>', opts)
map('n', '<Leader>fb', '<cmd>lua require("telescope.builtin").buffers({})<CR>', opts)
