local status_ok, mason = pcall(require, "mason")
if not status_ok then
    return
end

local status_ok_2, mason_config = pcall(require, "mason-lspconfig")
if not status_ok_2 then
    return
end

mason.setup();

local servers = require("lsp-config.servers")

mason_config.setup({
    ensure_installed = servers
});

local lspconfig = require("lspconfig")

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("lsp-config.handlers").on_attach,
        capabilities = require("lsp-config.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "lsp-config.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
end
