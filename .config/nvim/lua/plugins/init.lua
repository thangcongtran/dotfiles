return {

    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.treesitter"
        end,
    },

    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        dependencies = { "nvim-lspconfig" },
        config = function()
            require "configs.mason-lspconfig"
        end,
    },

    {
        "mfussenegger/nvim-lint",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require "configs.lint"
        end,
    },

    {
        "rshkarin/mason-nvim-lint",
        event = "VeryLazy",
        dependencies = { "nvim-lint" },
        config = function()
            require "configs.mason-lint"
        end,
    },

    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        config = function()
            require "configs.conform"
        end,
    },

    {
        "zapling/mason-conform.nvim",
        event = "VeryLazy",
        dependencies = { "conform.nvim" },
        config = function()
            require "configs.mason-conform"
        end,
    },

    {
    "MaximilianLloyd/ascii.nvim",
    requires = { "MunifTanjim/nui.nvim" },
    config = function()
        require("ascii").setup {
            -- Your custom options here (if any)
        }
    end
	},
	"dccsillag/magma-nvim",
    {
    "kiyoon/jupynium.nvim",
    build = "pip3 install --user .",
    config = function()
      require("jupynium").setup({
        python_host = vim.g.python3_host_prog or "python3",
        default_notebook_URL = "localhost:8888/nbclassic",
        jupyter_command = "jupyter",
        notebook_dir = nil,
        firefox_profiles_ini_path = nil,
        firefox_profile_name = nil,
        auto_start_server = {
          enable = false,
          file_pattern = { "*.ju.*" },
        },
        auto_attach_to_server = {
          enable = true,
          file_pattern = { "*.ju.*", "*.md" },
        },
        auto_start_sync = {
          enable = false,
          file_pattern = { "*.ju.*", "*.md" },
        },
        auto_download_ipynb = true,
        auto_close_tab = true,
        autoscroll = {
          enable = true,
          mode = "always",
          cell = { top_margin_percent = 20 },
        },
        scroll = {
          page = { step = 0.5 },
          cell = { top_margin_percent = 20 },
        },
        jupynium_file_pattern = { "*.ju.*" },
        use_default_keybindings = true,
        textobjects = { use_default_keybindings = true },
        syntax_highlight = { enable = true },
        shortsighted = false,
        kernel_hover = {
          floating_win_opts = {
            max_width = 84,
            border = "none",
          },
        },
        notify = {
          ignore = {
            -- "download_ipynb", "error_download_ipynb", ...
          },
        },
      })
    end,
  },
  {
    "rcarriga/nvim-notify",
    -- optional: cấu hình thêm nếu cần
  },
  {
    "stevearc/dressing.nvim",
    -- optional: cấu hình cho UI của :JupyniumKernelSelect
  },

}
