local plugins = {
  {
    "ThePrimeagen/vim-be-good",
    lazy = false,
  },
  {
    "iamcco/markdown-preview.nvim",
    lazy = false,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "bash",

        "go",
        "rust",
        "markdown",

        "gomod",
        "gosum",
        "gitignore",

        "json",
        "yaml",
        "regex",

        "dockerfile",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require("custom.configs.null-ls")
    end,
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    opts = function()
      return require("custom.configs.dap-config")
    end,
    init = function()
      require("dapui").setup()
      require("core.utils").load_mappings("dap_ui")
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "bash-language-server",
        "gofumpt",
        "goimports-reviser",
        "golines",
        "golangci-lint",
      }
    }
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
}
return plugins
