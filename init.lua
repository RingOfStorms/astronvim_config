return {
  colorscheme = "material",
  lsp = {
    formatting = { format_on_save = false },
    setup_handlers = {
      -- add custom handler
      rust_analyzer = function(_, opts)
        local rt = require "rust-tools"
        rt.setup {
          server = opts,
          tools = {
            inlay_hints = {
              parameter_hints_prefix = "< ",
              other_hints_prefix = ": ",
              highlight = "inlays",
            },
          },
        }
        rt.inlay_hints.enable()
      end,
    },
  },
}
