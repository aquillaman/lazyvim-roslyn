-- ~/.config/nvim/lua/plugins/inline-diagnostics.lua
return {
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup({
        -- preset = "modern", -- Options: "modern", "minimal", "powerline", etc.
        -- preset = "simple", -- Options: "modern", "minimal", "powerline", etc.
        preset = "powerline", -- Options: "modern", "minimal", "powerline", etc.
        options = {
          -- override_open_float = true,
          -- Use icons from vim.diagnostic.config instead of preset icons
          -- use_icons_from_diagnostic = true,
          -- Display the diagnostic code of diagnostics (e.g., "F401", "no-dupe-args")
          show_code = false,
          -- Only show diagnostics when the cursor is directly over them, no fallback to line diagnostics
          show_diags_only_under_cursor = true,
        },
      })
      -- It's usually best to disable the default virtual text
      vim.diagnostic.config({ virtual_text = false })
    end,
  },
}

