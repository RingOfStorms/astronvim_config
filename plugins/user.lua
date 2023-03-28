return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
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
}
