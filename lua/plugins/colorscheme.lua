vim.o.background = "light"
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      colorscheme = "tokyonight",
    },
  },

  -- add vscode
  -- { "Mofiqul/vscode.nvim" },
  -- Configure LazyVim to load vscode
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "vscode",
  --   },
  -- },
}
