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
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettierd",
        "eslint_d",
        "typescript-language-server",
        "emmet-language-server",
        "clangd",
        "clang-format",
        "bash-language-server",
        "omnisharp",
        "pyright",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "tsx",
        "javascript",
        "typescript",
        "python",
        "c_sharp",
        "cpp",
        "bash",
      },
    },
  },

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
      require("todo-comments").setup()
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
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup {}
    end,
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
