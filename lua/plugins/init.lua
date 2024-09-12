return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    -- opts = {
    --   ensure_installed = {
    --     "lua-language-server",
    --     "stylua",
    --     "html-lsp",
    --     "css-lsp",
    --     "prettierd",
    --     "eslint_d",
    --     "typescript-language-server",
    --     "emmet-language-server",
    --     "clangd",
    --     "clang-format",
    --     "bash-language-server",
    --     "omnisharp",
    --     "pyright",
    --     "json-lsp",
    --   },
    -- },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    -- opts = {
    --   ensure_installed = {
    --     "vim",
    --     "lua",
    --     "vimdoc",
    --     "html",
    --     "css",
    --     "tsx",
    --     "javascript",
    --     "typescript",
    --     "python",
    --     "c_sharp",
    --     "cpp",
    --     "bash",
    --   },
    -- },
  },

  -- {
  --   "IogaMaster/neocord",
  --   event = "VeryLazy",
  --   config = {
  --     -- General options
  --     logo = "auto", -- "auto" or url
  --     logo_tooltip = nil, -- nil or string
  --     main_image = "language", -- "language" or "logo"
  --     client_id = "1157438221865717891", -- Use your own Discord application client id (not recommended)
  --     log_level = nil, -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
  --     debounce_timeout = 10, -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
  --     blacklist = {}, -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
  --     file_assets = {}, -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
  --     show_time = true, -- Show the timer
  --     global_timer = false, -- if set true, timer won't update when any event are triggered
  --
  --     -- Rich Presence text options
  --     editing_text = "Editing %s", -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
  --     file_explorer_text = "Browsing %s", -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
  --     git_commit_text = "Committing changes", -- Format string rendered when committing changes in git (either string or function(filename: string): string)
  --     plugin_manager_text = "Managing plugins", -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
  --     reading_text = "Reading %s", -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
  --     workspace_text = "Working on %s", -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
  --     line_number_text = "Line %s out of %s", -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
  --     terminal_text = "Using Terminal", -- Format string rendered when in terminal mode.
  --   },
  -- },

  {
    -- Интеграция с Discord
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      main_image = "file",
      auto_update = true,
      neovim_image_text = "Neovim",
      enable_line_number = true,
      file_assets = {
        jsx = { "React JS", "react" },
        tsx = { "React TS", "react" },
        scss = {
          "SCSS",
          "https://sass-lang.com/assets/img/styleguide/seal-color.png",
        },
      },
    },
  },

  {
    -- UI для гита в Nvim
    "kdheepak/lazygit.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },

  {
    -- Мультикурсор
    "mg979/vim-visual-multi",
    event = "VeryLazy",
  },

  {
    -- Оборот слов в скобки
    "machakann/vim-sandwich",
    event = "VeryLazy",
  },

  {
    -- Улучшенная подсветка JSX
    "neoclide/vim-jsx-improve",
    event = "VeryLazy",
  },

  {
    -- Подстсветка .ts .tsx файлов
    "HerringtonDarkholme/yats.vim",
    event = "VeryLazy",
  },

  {
    -- Emmet
    "mattn/emmet-vim",
    event = "VeryLazy",
  },

  {
    -- Подсветка цветов
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",
    opts = {
      render = "background",
      enable_named_colors = true,
    },
  },

  {
    -- px в rem
    "jsongerber/nvim-px-to-rem",
    event = "VeryLazy",
    opts = {
      root_font_size = 16,
      decimal_count = 4,
      show_virtual_text = true,
    },
  },

  {
    -- Подробная информация о репозитории
    "rbong/vim-flog",
    lazy = false,
    dependencies = {
      "tpope/vim-fugitive",
    },
  },

  {
    -- Различия в файлах гит
    "sindrets/diffview.nvim",
    lazy = false,
  },

  {
    -- Подсветка TODO
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("todo-comments").setup {
        keywords = {
          DELETE = { icon = "D", color = "warning", alt = { "DEL" } },
          MARK = { icon = "?", color = "mark", alt = { "M" } },
        },
        colors = {
          mark = { "Identifier", "#7C3" },
        },
      }
    end,
  },

  {
    -- Поиск ошибок и ворнингов
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    -- Автокомплит кода от нейросети
    "Exafunction/codeium.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {
        enable_chat = true,
      }
    end,
  },

  {
    "Eandrju/cellular-automaton.nvim",
    lazy = false,
  },

  {
    "f-person/git-blame.nvim",
    lazy = false,
  },

  -- To make a plugin not be loaded
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
  },

  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
  },
}
