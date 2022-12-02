require("telescope").setup({
    defaults = {
        layout_strategy = "flex",
        layout_config = {
            flex = {
                flip_columns = 120,
            },
        },
    },
    extensions = {
        coc = {
            theme = 'ivy',
            prefer_locations = true, -- always use Telescope locations to preview definitions/declarations/implementations etc
        },
    },
})
require('telescope').load_extension('coc')
