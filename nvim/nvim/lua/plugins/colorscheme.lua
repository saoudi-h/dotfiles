-- return {
--   {
--     "craftzdog/solarized-osaka.nvim",
--     branch = "osaka",
--     lazy = true,
--     priority = 1000,
--     opts = function()
--       return {
--         transparent = true,
--       }
--     end,
--   },
--
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "solarized-osaka",
--     },
--   },
-- }

-- return {
--   {
--     "navarasu/onedark.nvim",
--     opts = {
--       style = "warmer",
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "onedark",
--     },
--   },
-- }

-- return {
--   "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("cyberdream").setup({
--       transparent = true,
--       italic_comments = false,
--       hide_fillchars = false,
--       borderless_telescope = { border = false, style = "nvchad" },
--       terminal_colors = true,
--       theme = {
--         variant = "light",
--       },
--     })
--     vim.cmd("colorscheme cyberdream")
--   end,
-- }

-- return {
--   -- add tokyonight
--   {
--     "folke/tokyonight.nvim",
--     lazy = true,
--     opts = {
--       style = "night",
--     },
--   },
--
--   -- Configure LazyVim to load gruvbox
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "tokyonight",
--     },
--   },
-- }
--
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    build = ":CatppuccinCompile",
    opts = {
      -- compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
      flavour = "mocha",
      transparent_background = not vim.g.neovide,
      term_colors = true,
      -- custom_highlights = require("plugins.ui.theme.override"),
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      integrations = {
        blink_cmp = false,
        dap = true,
        dap_ui = true,
        dashboard = true,
        flash = true,
        fzf = true,
        notify = true,
        noice = true,
        neotree = false,
        gitsigns = true,
        markdown = true,
        headlines = true,
        telekasten = true,
        ts_rainbow2 = false,
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
          inlay_hints = {
            background = true,
          },
        },
        rainbow_delimiters = true,
        treesitter = true,
        treesitter_context = false,
        telescope = {
          enabled = true,
        },

        navic = { enabled = false },
        -- leap               = true,
        mason = false,
        indent_blankline = {
          enable = true,
          colored_indent_levels = true,
        },
        window_picker = false,
        which_key = false,
        symbols_outline = false,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
