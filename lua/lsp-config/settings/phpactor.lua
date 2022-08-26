return {
    init_options = {
        behat = {
            enabled = true,
            symfony = {
                di_xml_path = "app/config/services.yml"
            }
        },
        language_server_psalm = {
            enabled = true,
        },
        language_server_phpstan = {
            enabled = true,
        }
    }
}
