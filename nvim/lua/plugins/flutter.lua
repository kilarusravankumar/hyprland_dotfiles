return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
      "nvim-telescope/telescope.nvim",
    },
    -- LazyVim style keymaps attached directly to the plugin
    keys = {
      { "<leader>zf", "<cmd>Telescope flutter commands<cr>", desc = "Flutter Commands" },
      { "<leader>zr", "<cmd>FlutterReload<cr>", desc = "Flutter Hot Reload" },
      { "<leader>zR", "<cmd>FlutterRestart<cr>", desc = "Flutter Hot Restart" },
      { "<leader>zd", "<cmd>FlutterDevices<cr>", desc = "Flutter Select Device" },
      { "<leader>zl", "<cmd>FlutterLogOpen<cr>", desc = "Flutter Open Logs" },
      { "<leader>zq", "<cmd>FlutterQuit<cr>", desc = "Flutter Quit App" },
    },
    config = function()
      -- Load telescope extension
      require("telescope").load_extension("flutter")

      require("flutter-tools").setup({
        ui = {
          border = "rounded",
          notification_style = "messages",
        },
        decorations = {
          statusline = { device = true, app_version = true },
        },
        lsp = {
          color_render = true,
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
      })
    end,
  },
}
