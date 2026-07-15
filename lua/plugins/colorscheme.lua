return {
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   opts = {
  --     -- contrast = "default", -- "hard", "soft", or default
  --     --  contrast = "hard", -- "hard", "soft", or default
  --     contrast = "soft", -- "hard", "soft", or default
  --     transparent_mode = false,
  --   },
  --   config = function(_, opts)
  --     require("gruvbox").setup(opts)
  --     vim.o.background = "light" -- Critical for light mode
  --     -- vim.o.background = "dark" -- Critical for light mode
  --     vim.cmd("colorscheme gruvbox")
  --   end,
  -- },

  -- Install the Catppuccin plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- Load immediately
    priority = 1000, -- Load early (like colorschemes should)
    opts = {
      flavour = "latte", -- Options: "latte", "frappe", "macchiato", "mocha"
      transparent_background = false, -- Set to true if you want transparency
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Tell LazyVim to use Catppuccin as the colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
