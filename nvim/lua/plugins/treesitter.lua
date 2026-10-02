return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "json",
        "markdown",
        "markdown_inline",
        "bash",
        "go", -- Nice to have for backend scripts down the line
      },
      auto_install = true, -- Automatically install missing parsers when entering a new filetype
    },
  },
}
