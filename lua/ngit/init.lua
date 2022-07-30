local status_ok, neogit = pcall(require, "neogit")

if not status_ok then
    return
end

local opts = {noremap=true, silent = true}
local map = vim.keymap.set

neogit.setup({})
map("n", "<leader>ga", "<cmd>!git fetch --all<CR>", opts)
map("n", "<leader>gn",function ()
    neogit.open({})
end, opts)
