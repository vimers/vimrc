local flash = require("flash")

vim.keymap.set({"n", "o", "x"}, 's', function() flash.jump() end)
vim.keymap.set({"n", "o", "x"}, 'S', function() flash.treesitter() end)
vim.keymap.set("o", 'r', function() flash.remote() end)
vim.keymap.set({"o", "x"}, 'R', function() flash.treesitter_search() end)
vim.keymap.set({"c"}, "<c-s>", function() flash.toggle() end)
