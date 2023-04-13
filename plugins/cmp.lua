return {
  "nvim-cmp",
  dependencies = {
    {
      "zbirenbaum/copilot-cmp",
      opts = {},
    },
  },
  opts = function(_, opts)
    local cmp = require "cmp"
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "copilot" } }))
  end,
}
