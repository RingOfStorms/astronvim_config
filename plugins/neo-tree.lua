return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      follow_current_file = true,
      group_empty_dirs = true,
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".DS_Store",
        },
      },
    },
    nesting_rules = {
      ["ts"] = { ".cjs", ".cjs.map", ".d.ts", ".d.ts.map", ".js", ".js.map", ".mjs", ".mjs.map", ".test.ts" },
      ["tsx"] = { ".d.ts", ".d.ts.map", ".js;", ".js.map;", ".jsx;", ".jsx.map;", ".module.scss;", ".svg" },
      ["scss"] = { ".css", ".css.map" },
    },
  },
}
