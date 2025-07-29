require "opts"
require "launch"


spec("plugin.treesitter")
spec("plugin.telescope")
spec("plugin.lsp-zero")
spec("plugin.mason")

require "keymaps"
require "plugin.lazy"

vim.cmd("colorscheme retrobox")

