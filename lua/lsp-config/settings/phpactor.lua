local opts = {}
if string.match(vim.loop.cwd(), "/widgets-container$") or string.match(vim.loop.cwd(), "/front1$") then
    opts = {
        behat = {
            enabled = true,
            symfony = {
                di_xml_path = "",
            }
        },
        language_server_psalm = {
            enabled = true,
            bin = ""
        },
        language_server_phpstan = {
            enabled = true,
            bin = ""
        },
        composer = {
            autoloader_path = ""
        }
    }
end
if string.match(vim.loop.cwd(), "/cs$") then
    opts = {
        behat = {
            enabled = true,
            symfony = {
                di_xml_path = "",
            }
        },
        language_server_psalm = {
            enabled = true,
            bin = ""
        },
        language_server_phpstan = {
            enabled = true,
            bin = ""
        },
        composer = {
            autoloader_path = ""
        }
    }
end

return opts
