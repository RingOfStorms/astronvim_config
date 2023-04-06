return {
  {
    "marko-cerovac/material.nvim",
    config = function()
      vim.g.material_style = "darker"
      require("material").setup {
        plugins = {
          "dashboard",
          "gitsigns",
          "telescope",
          "nvim-tree",
          "which-key",
        },

        high_visibility = {
          darker = true,
          -- lighter = true,
        }
      }
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    event = "BufEnter",
  },
  {
    "Almo7aya/openingh.nvim",
    event = "BufEnter",
  },
  {
    "gioele/vim-autoswap",
    event = "BufEnter",
  },
  {
    "lnc3l0t/glow.nvim",
    branch = "advanced_window",
    config = {
      default_type = "keep"
    },
    cmd = "Glow"
  },
  -- {
  --   "simrat39/inlay-hints.nvim",
  -- },
  -- This is not working so disabling for now...
}
