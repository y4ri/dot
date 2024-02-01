return {
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000,
  --   config = true,
  --   opts = {
  --     lazy = true,
  --     terminal_colors = true, -- add neovim terminal colors
  --     undercurl = true,
  --     underline = true,
  --     bold = false,
  --     italic = {
  --       strings = true,
  --       emphasis = true,
  --       comments = true,
  --       operators = false,
  --       folds = true,
  --     },
  --     strikethrough = true,
  --     invert_selection = false,
  --     invert_signs = false,
  --     invert_tabline = false,
  --     invert_intend_guides = false,
  --     inverse = true, -- invert background for search, diffs, statuslines and errors
  --     contrast = "hard", -- can be "hard", "soft" or empty string
  --     overrides = {},
  --     dim_inactive = false,
  --     transparent_mode = false,
  --     palette_overrides = {
  --       dark0_hard = "#1b1b1b",
  --       dark3 = "#3c3c3c",
  --     },
  --   },
  -- },
  --
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = {
      lazy = true,
      name = "kanagawa",
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,         -- do not set background color
      dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {},
          all = {
            ui = {
                bg_gutter = "none"
            },
          }
        },
      },
      -- overrides = function(colors) -- add/modify highlights
      --     return {}
      -- end,
      theme = "dragon",              -- Load "wave" theme when 'background' option is not set
      background = {               -- map the value of 'background' option to a theme
          dark = "dragon",           -- try "dragon" !
          light = "lotus"
      },
    },
    config = function(_, opts)
      require('kanagawa').setup(opts)
      vim.cmd('colorscheme kanagawa')
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
}

