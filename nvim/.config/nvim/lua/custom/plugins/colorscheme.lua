return {
  {
    'catppuccin/nvim',
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
          light = "latte",
          dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
      term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
          enabled = false, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
          comments = { "italic" }, -- Change the style of comments
          conditionals = { "italic" },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
          -- miscs = {}, -- Uncomment to turn off hard-coded styles
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
          cmp = true,
          gitsigns = true,
          nvimtree = true,
          treesitter = true,
          notify = false,
          mini = {
              enabled = true,
              indentscope_color = "",
          },
      },
    },
    config = function(_, opts)
      -- require('catppuccin').setup(opts)
      -- vim.cmd('colorscheme catppuccin')
    end
  },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    opts = {
      contrast = "hard", -- can be "soft", "medium" or "hard"
      palette_overrides = {
        dark0_hard = "#1A1A1A",  -- Background color
        dark0 = "#1A1A1A",       -- Consistent background
        dark1 = "#282828",       -- Slightly lighter background
        dark2 = "#3c3836",       -- UI elements and borders
        dark3 = "#504945",       -- Black color
        dark4 = "#665c54",       -- Selection background
        
        light0 = "#EBDBB2",      -- Foreground text
        light1 = "#d5c4a1",
        light2 = "#d5c4a1",
        light3 = "#bdae93",
        light4 = "#A89984",     -- White color

        bright_red = "#FB4934",  -- Bright red
        bright_green = "#B8BB26",-- Bright green
        bright_yellow = "#FABD2F",-- Bright yellow
        bright_blue = "#83A598", -- Bright blue
        bright_purple = "#D3869B",-- Bright purple
        bright_aqua = "#8EC07C", -- Bright cyan
        
        neutral_red = "#CC241D", -- Red
        neutral_green = "#98971A",-- Green
        neutral_yellow = "#D79921",-- Yellow
        neutral_blue = "#458588",-- Blue
        neutral_purple = "#B16286",-- Purple
        neutral_aqua = "#689D6A",-- Cyan
        
        gray = "#928374",       -- Bright black
      },
      overrides = {},
      transparent_mode = false,
    },
    config = function(_, opts)
      require('gruvbox').setup(opts)
      vim.cmd('colorscheme gruvbox')
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

