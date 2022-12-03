require("telescope").setup({
    defaults = {
        layout_strategy = "flex",
        layout_config = {
            flex = {
                flip_columns = 120,
            },
        },
    },
})
require('telescope').load_extension('coc')
