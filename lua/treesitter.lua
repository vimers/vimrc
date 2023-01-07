require'nvim-treesitter.configs'.setup {
  ensure_installed = {
        "python", "c", "cpp", "json",
        "yaml", "html", "css", "vim", "markdown",
        "lua", "javascript", "typescript", "tsx",
        "cmake", "make",
    },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<DEL>',
      scope_incremental = '<TAB>',
    }
  },
  indent = {
    enable = true
  }
}
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldlevel = 99
