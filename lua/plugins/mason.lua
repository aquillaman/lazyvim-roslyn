return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      -- override ui.icons
      opts.ui = opts.ui or {}
      opts.ui.icons = vim.tbl_deep_extend("force", opts.ui.icons or {}, {
        package_installed = "",
        package_pending = "",
        package_uninstalled = "",
      })

      -- add git repository with roslyn
      opts.registries = opts.registries or {}
      opts.registries = vim.tbl_deep_extend("force", opts.registries or {}, {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      })

      -- add git repository with roslyn
      opts.ensure_installed = opts.ensure_installed or {}
      opts.ensure_installed = vim.tbl_deep_extend("force", opts.ensure_installed or {}, {
        "roslyn",
        "csharpier",
      })

      return opts
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    event = "VeryLazy",
    -- version = "1.32.0",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      auto_install = false,
    },
  },
}

