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
    config = function()
      require("auto-save").setup {
        -- config
      }
    end,
  },
  {
    "Almo7aya/openingh.nvim",
    event = "BufEnter",
  },
  {
    "gioele/vim-autoswap",
    event = "BufEnter",
  },
  -- {
  --   "simrat39/inlay-hints.nvim",
  -- },
  -- This is not working so disabling for now...
}
