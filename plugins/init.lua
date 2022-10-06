local overrides = require "custom.plugins.overrides"

return {
----------------------------------------- default plugins ------------------------------------------

  ["goolord/alpha-nvim"] = {
    rm_default_opts = true,
    config = function()
      require "custom.plugins.alpha"
    end,
  },

  ["folke/which-key.nvim"] = {
    rm_default_opts = true,
    config = function()
      require "custom.plugins.whichkey"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- override default configs
  ["kyazdani42/nvim-tree.lua"] = {
    rm_default_opts = true,
    after = "ui",
    config = function()
      require "custom.plugins.nvim-tree"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = overrides.blankline,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  --------------------------------------------- custom plugins ----------------------------------------------
  -- autoclose tags in html, jsx etc
  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },

  -- format & linting
  ["jose-elias-alvarez/null-ls.nvim"] = {
    commit = "ff40739e5be6581899b43385997e39eecdbf9465",
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  -- minimal modes
  ["Pocco81/TrueZen.nvim"] = {
    cmd = {
      "TZAtaraxis",
      "TZMinimalist",
      "TZFocus",
    },
    config = function()
      require "custom.plugins.truezen"
    end,
  },

  -- get highlight group under cursor
  ["nvim-treesitter/playground"] = {
    cmd = "TSCaptureUnderCursor",
    config = function()
      require("nvim-treesitter.configs").setup()
    end,
  },

  -- dim inactive windows
  ["andreadev-it/shade.nvim"] = {
    module = "shade",
    config = function()
      require "custom.plugins.shade"
    end,
  },

  ["Pocco81/AutoSave.nvim"] = {
    module = "autosave",
    config = function()
      require("autosave").setup()
    end,
  },

  -- notes stuff
  ["nvim-neorg/neorg"] = {
    tag = "0.0.12",
    ft = "norg",
    after = "nvim-treesitter",
    setup = function()
      require("custom.plugins.neorg").autocmd()
    end,
    config = function()
      require("custom.plugins.neorg").setup()
    end,
  },

  ["karb94/neoscroll.nvim"] = {
    config = function()
      require "custom.plugins.neoscroll"
    end,
  },

  ["mg979/vim-visual-multi"] = {},

  ["matze/vim-move"] = {
    config = function()
      require "custom.plugins.vim-move"
    end,
  },

  ["folke/trouble.nvim"] = {
    config = function()
      require "custom.plugins.trouble"
    end,
  },

  ["p00f/nvim-ts-rainbow"] = {},

  ["sindrets/diffview.nvim"] = {
    config = function()
      require "custom.plugins.diffview"
    end,
  },

  ["yamatsum/nvim-cursorline"] = {
    config = function()
      require "custom.plugins.nvim-cursorline"
    end,
  },

  -- basic diagrams for flow charts etc
  ["jbyuki/venn.nvim"] = {
    module = "venn.nvim",
    config = function()
      require("custom.plugins.venn").setup()
    end,
  },
}
