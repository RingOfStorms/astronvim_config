return {
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
    event = "BufEnter"
  },
  -- {
  --   "simrat39/inlay-hints.nvim",
  -- },
  -- This is not working so disabling for now...
}
