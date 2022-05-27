require("rust-tools").setup({})
require("transparent").setup({
  enable = false, -- boolean: enable transparent
})

require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true
  }
}

local util = require 'lspconfig.util'

-- set the path to the vls installation;
local vls_root_path = "/home/leo/bin/vls"
local vls_binary = "/home/leo/bin/vls/bin/vls"

require 'lspconfig'.vls.setup({ cmd = { vls_binary }, filetypes = { "vlang" }, root_dir=util.root_pattern('') })

require'lspconfig'.texlab.setup{settings = {
  texlab = {
    auxDirectory = ".",
    bibtexFormatter = "texlab",
    build = {
      args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
      executable = "latexmk",
      forwardSearchAfter = false,
      onSave = false
    },
    chktex = {
      onEdit = true,
      onOpenAndSave = true
    },
    diagnosticsDelay = 300,
    formatterLineLength = 80,
    forwardSearch = {
      args = {}
    },
    latexFormatter = "latexindent",
    latexindent = {
      modifyLineBreaks = true
    }
  }
}
}
