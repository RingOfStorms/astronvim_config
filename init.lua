return {
  colorscheme = "material",
  lsp = {
    formatting = { format_on_save = false },
    -- skip_setup = { "rust_analyzer" },
    setup_handlers = {
      -- add custom handler
      rust_analyzer = function(_, opts) require("rust-tools").setup { server = opts } end,
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
