return {
	settings = {
		Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        -- version = "LuaJIT",
        -- Setup your lua path
        -- path = vim.split(package.path, ";"),
      },
			diagnostics = {
        -- Get the language server to recognize the `vim` global
				globals = { "vim" },
			},
			workspace = {
				library = {
					-- [vim.fn.expand("$VIMRUNTIME/lua")] = true,
					-- [vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
-- local status_ok, luadev pcall(require,"luadev")
-- return luadev.setup({})
