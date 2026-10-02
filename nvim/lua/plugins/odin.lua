return {
  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ols = {
          mason = false, -- only needed if you're using a custom-built ols
          cmd = { "ols" }, -- or full path if not on $PATH
          init_options = {
            checker_args = "-strict-style",
            collections = {
              { name = "shared", path = vim.fn.expand("$HOME/odin-lib") },
            },
          },
        },
      },
    },
  },
  -- Formatting
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        odinfmt = {
          command = "odinfmt",
          args = { "-stdin" },
          stdin = true,
        },
      },
      formatters_by_ft = {
        odin = { "odinfmt" },
      },
    },
  },
}
