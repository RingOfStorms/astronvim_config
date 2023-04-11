return {
  "simrat39/rust-tools.nvim",
  after = { "mason-lspconfig.nvim" },
  config = function()
    local rt = require "rust-tools"
    rt.setup {
      tools = {
        runnables = {
          use_telescope = true,
        },
        inlay_hints = {
          auto = true,
          show_parameter_hints = true,
          parameter_hints_prefix = "asdasd ",
          other_hints_prefix = "dddd ",
          only_current_line = false,
        },
      },

      -- all the opts to send to nvim-lspconfig
      -- these override the defaults set by rust-tools.nvim
      -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
      -- server = {
      --   -- on_attach is a callback called when the language server attachs to the buffer
      --   on_attach = on_attach,
      --   settings = {
      --     -- to enable rust-analyzer settings visit:
      --     -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
      --     ["rust-analyzer"] = {
      --       -- enable clippy on save
      --       checkOnSave = {
      --         command = "clippy",
      --       },
      --     },
      --   },
      -- },
    }
    rt.inlay_hints.enable()
  end,
}
