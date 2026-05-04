return {
  {
    "mason-org/mason.nvim",
    config = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "roslyn", "csharpier" } },
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
  {
    "seblyng/roslyn.nvim",
    ft = { "cs", "vb", "csproj", "sln", "slnx", "props", "csx", "targets", "trpoj", "fproj" },
    opts = {
      -- your configuration comes here; leave empty for default settings
    },
  },
}
