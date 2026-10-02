return {
  {
    "leoluz/nvim-dap-go",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = {},
    keys = {
      {
        "<leader>dT",
        function()
          require("dap-go").debug_test()
        end,
        desc = "Go: Debug Nearest Test",
      },
      {
        "<leader>dL",
        function()
          require("dap-go").debug_last_test()
        end,
        desc = "Go: Debug Last Test",
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      ensure_installed = { "delve" },
    },
  },
}
