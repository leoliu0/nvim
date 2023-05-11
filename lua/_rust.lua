local rt = require("rust-tools")

rt.setup({
  server = {
    settings = {
      ["rust-analyzer"] = {
        inlayHints = { locationLinks = false },
      },
    },
  },
})

require("transparent").setup({ })

require'nvim-treesitter.configs'.setup {
  context_commentstring = {
    enable = true
  }
}

require'lspconfig'.gopls.setup{}

require'lspconfig'.typst_lsp.setup{}

local util = require 'lspconfig.util'

require'lspconfig'.vls.setup{
    root_dir = util.root_pattern('v.mod', '.git','.v'),
}

require("nvim-lsp-installer").setup{}

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
