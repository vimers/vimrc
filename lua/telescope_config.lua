require("telescope").setup({
    defaults = {
        layout_strategy = "vertical",
        layout_config = {
            height = 0.95,
            prompt_position = 'top',
        },
    },
    pickers = {
        find_files = {
            theme = "dropdown"
        }
    },
    extensions = {
        coc = {
            theme = 'ivy',
            prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
        },
    },
})
require('telescope').load_extension('coc')
