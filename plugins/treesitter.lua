return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    "all",
    -- ensure_installed = "all",
    -- auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    ident = { enable = true },
    rainbow = {
      enable = true,
      extended_mode = true,
      max_file_lines = nil,
    },
  },
}
