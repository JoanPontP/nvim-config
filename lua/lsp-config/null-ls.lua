local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
    return
end

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    debug = false,
    sources = {
        formatting.prettier.with({ extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote" } }),
        formatting.black.with({ extra_args = { "--fast" } }),
        -- formatting.stylua,
        -- formatting.lua_format.with({ extra_args = { "-i" } }),
        -- formatting.eslint_d.with({extra_args={"--fix-to-stdout", "--stdin", "--stdin-filename", "$FILENAME"}}),
        formatting.phpcsfixer.with({ extra_args = { "--no-interacction", "--quiet", "fix", "$FILENAME" } }),
        formatting.rustfmt.with({ extra_args = { "--emit=stdout" } }),
        formatting.beautysh.with({ extra_args = { "$FILENAME" } }),
        diagnostics.phpmd.with({ extra_args = { "$FILENAME", "json" } }),
        diagnostics.luacheck.with({ extra_args = { "--formatter", "plain", "--codes", "--ranges", "--filename", "$FILENAME", "-" } }),
        diagnostics.zsh.with({ extra_args = { "-n", "$FILENAME" } }),
        diagnostics.yamllint.with({ extra_args = { "--format", "parsable", "-" } }),
        diagnostics.twigcs.with({ extra_args = { "--reporter", "json", "$FILENAME" } }),
        diagnostics.psalm.with({ extra_args = { "--output-format=json", "--no-progress", "$FILENAME" } }),
        diagnostics.php.with({ extra_args = { "-l", "-d", "display_errors=STDERR", "-d", " log_errors=Off" } }),
        diagnostics.shellcheck.with({ extra_args = { "-format", "json1", "--sorurce-path=$DIRNAME", "--external-sources", "-" } }),
        diagnostics.ansiblelint
        -- diagnostics.flake8
    },
})
