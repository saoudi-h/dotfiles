return {
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        -- show hidden files
      },
      picker = {
        sources = {
          explorer = {
            -- your explorer picker configuration comes here
            -- or leave it empty to use the default settings
            hidden = true,
            ignored = true,
            exclude = {
              "node_modules/**",
              ".git",
              ".svn",
              ".hg",
              ".DS_Store",
              ".cache",
              ".vscode",
              ".idea",
              ".sass-cache",
              ".stack-work",
              ".ccls-cache",
              ".clangd",
              ".mypy_cache",
              ".pytest_cache",
              ".serverless",
              ".terraform",
              ".vagrant",
              ".venv",
              ".vscode-test",
              ".yarn",
              ".yarn-integrity",
              ".yarn-metadata",
              ".yarn-tarball",
              ".yarnrc",
              ".yarnrc.yml",
              ".yarnignore",
            },
          },
        },
      },
    },
  },
}
