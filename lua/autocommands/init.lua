-- improve indentation in those files
local groupname = "indentation"
vim.api.nvim_create_augroup(groupname, { clear=true })
vim.api.nvim_create_autocmd( "FileType", {
    group=groupname,
    pattern={
    "json",
    "yaml",
    "yml",
    },
    callback=function ()
        vim.opt_local.cursorcolumn=true
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end
})

--- Remove all trailing whitespace on save
local TrimWhiteSpaceGrp = vim.api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	command = [[:%s/\s\+$//e]],
	group = TrimWhiteSpaceGrp,
})

-- set wrap and spell in md and gitcommit
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "gitcommit", "markdown", "yaml", "yml" },
--   callback = function()
--     vim.opt_local.wrap = true
--     vim.opt_local.spell = true
--   end,
-- })

vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({higroup="Sneak", timeout=100})
	end,
	desc = "Highlight on yank",
})
-- source plugins.lua and run PackerSync on save
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "plugins.lua" },
    command = [[source <afile> | PackerSync]]
})
