return {
  colorscheme = "material",
  lsp = {
    -- server_registration = function(server, opts)
    --   if server == 'rust_analyzer' then
    --     require('rust-tools').setup({ server = opts })
    --     return
    --   end
    --
    --   require('lspconfig')[server].setup(opts)
    -- end,
    formatting = { format_on_save = false },
    -- skip_setup = { "rust_analyzer" },
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
    -- server_registration = function(server, opts)
    --   if server == "rust_analyzer" then
    --     require("rust-tools").setup { server = opts }
    --     return
    --   end
    --
    --   require("lspconfig")[server].setup(opts)
    -- end,
  },
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
}
