vim.o.background = "light"

return {
  --
  -- Main theme
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "light"

      -- Palette: "material", "mix", "original"
      vim.g.gruvbox_material_foreground = "material"
      -- Background: "hard", "medium", "soft"
      vim.g.gruvbox_material_background = "hard"
      -- Transparent background: 0 or 1
      vim.g.gruvbox_material_transparent_background = 0
      -- Better performance
      vim.g.gruvbox_material_better_performance = 1
      -- Plugin support
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
      vim.g.gruvbox_material_current_word = "grey background"

      -- Apply the theme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },

  -- Tell LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },

  --[[
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "auto", -- "auto" will use light/dark based on background
      transparent_background = false,
      show_end_of_buffer = false, -- hide '~' at end of buffer
      term_colors = true,
      dim_inactive = {
        enabled = false,
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      integrations = {
        -- Enable or disable integrations for plugins you use
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For LazyVim's default plugins:
        which_key = true,
        treesitter = true,
        treesitter_context = true,
        lsp_trouble = false,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
      },
    },
    -- Optional: Compile Catppuccin for faster startup
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  -- Default LazyVim theme
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin" } },
]]

  --[[
  {
    "folke/tokyonight.nvim",
    lazy = false, -- Load immediately
    priority = 1000, -- High priority for colorscheme
    config = function()
      --  vim.o.background = "light"

      -- Optional: Custom configuration (shown with all defaults)
      require("tokyonight").setup({
        -- style = "moon", -- Options: "storm", "moon", "night", "day"
        style = "day", -- Options: "storm", "moon", "night", "day"
        light_style = "day", -- Style used when background is "light"
        transparent = false, -- Disable background transparency
        terminal_colors = true, -- Terminal colors in :terminal
        dim_inactive = false, -- Dim inactive windows
        lualine_bold = false, -- Bold section headers in lualine
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark", -- "dark" | "transparent" | "normal"
          floats = "dark", -- "dark" | "transparent" | "normal"
        },
        day_brightness = 0.3, -- Day style brightness (0-1)
        on_colors = function(colors) end, -- Override colors
        on_highlights = function(highlights, colors) end, -- Override highlights
      })

      -- Apply the colorscheme
      vim.cmd.colorscheme("tokyonight")
    end,
  },
]]
  --[[
  {
    -- Use the most popular and actively maintained Gruvbox
    "ellisonleao/gruvbox.nvim",

    -- High priority ensures the colorscheme loads first, preventing "flash" of default colors
    priority = 1000,

    -- Configure the theme and set it as the active colorscheme
    config = function()
      -- Optional: Configure Gruvbox options before setting the colorscheme
      vim.g.gruvbox_contrast_dark = "hard"
      -- vim.g.gruvbox_invert_selection = false

      -- Apply the colorscheme
      vim.cmd.colorscheme("gruvbox")
    end,
  },
]]
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --     -- colorscheme = "tokyonight",
  --   },
  -- },

  -- add vscode
  -- { "Mofiqul/vscode.nvim" },
  -- Configure LazyVim to load vscode
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "vscode",
  --   },
  -- },
  -- {
  --   "ayu-theme/ayu-vim",
  --   lazy = false, -- load immediately
  --   priority = 1000, -- load before other colorschemes
  --   config = function()
  --     vim.opt.termguicolors = true
  --     -- Choose one of the three variants:
  --     -- vim.g.ayucolor = "dark" -- or "mirage", "light"
  --     -- vim.g.ayucolor = "mirage" -- or "mirage", "light"
  --     vim.g.ayucolor = "light" -- or "mirage", "light"
  --     vim.cmd.colorscheme("ayu")
  --   end,
  -- },
  --[[
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = "light"
      local c = require("vscode.colors").get_colors()

      require("vscode").setup({
        -- Set theme style: 'dark' (default) or 'light'
        -- Alternatively, set vim.o.background = 'light' before loading
        style = "light",

        -- Enable transparent background
        transparent = false,

        -- Enable italic comments
        italic_comments = true,

        -- Enable italic inlay type hints
        italic_inlayhints = true,

        -- Underline `@markup.link.*` variants
        underline_links = true,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = false,

        -- Apply theme colors to terminal
        terminal_colors = true,

        -- Override specific colors
        color_overrides = {
          vscLineNumber = "#FFFFFF",
          vscGitAdded = "#73C991",
          vscGitModified = "#E2C08D",
          vscGitRemoved = "#F14C4C",
        },

        -- Override highlight groups
        group_overrides = {
          -- This supports the same table as vim.api.nvim_set_hl
          Cursor = {
            fg = c.vscDarkBlue,
            bg = c.vscLightGreen,
            bold = true,
          },
          -- Comment = { fg = '#80C0D0', italic = true },
        },
      })

      -- Load the colorscheme
      vim.cmd.colorscheme("vscode")
    end,
  },
  ]]
}
