local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don"t error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({
        border = "rounded",
      })
    end,
  },
})

-- Install your plugins here
return packer.startup(function(use)
  -- Additions

use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use("fatih/vim-go")
 use("lervag/vimtex")
 use("rust-lang/rust.vim")
 use("simrat39/rust-tools.nvim")
 use('ollykel/v-vim')
 use("sainnhe/sonokai")
 use("mattn/emmet-vim")
 use("github/copilot.vim")
 use("xiyaowong/nvim-transparent")
 use("cespare/vim-toml")
 use("NoahTheDuke/vim-just")
 use("elzr/vim-json")
 use("chrisbra/csv.vim")
 use("ethanholz/nvim-lastplace")
 use 'JoosepAlviste/nvim-ts-context-commentstring'
 use("poliquin/stata-vim")
 use({
    "junegunn/fzf",
    run = "./install --bin",
 })
 use({ 'psf/black'})
        use "lukas-reineke/lsp-format.nvim"
 -- use('prabirshrestha/vim-lsp')
 use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}-- use('mattn/vim-lsp-settings')

  -- My plugins here
  use("wbthomason/packer.nvim") -- Have packer manage itself
  use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
  use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
  use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
  use("numToStr/Comment.nvim") -- Easily comment stuff
  use("kyazdani42/nvim-web-devicons")
  use("kyazdani42/nvim-tree.lua")
  use("akinsho/bufferline.nvim")
  use("moll/vim-bbye")
  use("nvim-lualine/lualine.nvim")
  use("akinsho/toggleterm.nvim")
  use("ahmedkhalf/project.nvim")
  use("lewis6991/impatient.nvim")
  use("lukas-reineke/indent-blankline.nvim")
  use("goolord/alpha-nvim")
  use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight
  use("folke/which-key.nvim")

  -- Colorschemes
  -- use "lunarvim/colorschemes" -- A bunch of colorschemes you can try out
  use("lunarvim/darkplus.nvim")

  -- cmp plugins
  use({"hrsh7th/nvim-cmp", requires={
  "quangnguyen30192/cmp-nvim-ultisnips",
   config = function()
      -- optional call to setup (see customization section)
      require("cmp_nvim_ultisnips").setup{}
    end,
  }}) -- The completion plugin
  use("hrsh7th/cmp-buffer") -- buffer completions
  use("hrsh7th/cmp-path") -- path completions
  use("hrsh7th/cmp-cmdline") -- cmdline completions
  use("saadparwaiz1/cmp_luasnip") -- snippet completions
  use("hrsh7th/cmp-nvim-lsp")

  -- snippets
  use("SirVer/ultisnips")
  use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

  -- LSP
use {
    'neovim/nvim-lspconfig',
    'williamboman/nvim-lsp-installer',
}
  use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
  use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

  use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }
  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  })

  -- Git
  use("lewis6991/gitsigns.nvim")


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
end)
