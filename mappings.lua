local scratch = function(extension)
  os.execute('mkdir -p ~/dev/scratches/')
  local date = os.date "%Y-%m-%dT%H:%M:%S"
  local filepath = "~/dev/scratches/scratch_" .. date .. extension
  vim.cmd("execute 'edit " .. filepath .. "'")
end

return {
  n = {
    ["<C-d>"] = { "<C-d>zz", desc = "Vertical half page down and center cursor" },
    ["<C-u>"] = { "<C-u>zz", desc = "Vertical half page up and center cursor" },
    ["<leader>gf"] = { ":OpenInGHFile <CR>", desc = "Open in github" },
    ["<leader>m"] = { name = " Markdown" },
    ["<leader>mp"] = { ":Glow <CR>", desc = "Markdown preview" },
    ["y"] = { '"*y', desc = "Copy to system clipboard" },
    ["p"] = { '"*p', desc = "Paste from system clipboard" },
    ["<leader>fs"] = {
      function()
        require("telescope.builtin").live_grep {
          search_dirs = { "~/dev/scratches/" },
        }
      end,
      desc = "Find words in scratches",
    },
    ["<leader>s"] = { name = " Scratch File" },
    ["<leader>ss"] = { function() scratch ".txt" end, desc = "New text scratch file" },
    ["<leader>sn"] = { function() scratch ".json" end, desc = "New json scratch file" },
    ["<leader>ss"] = { function() scratch ".sql" end, desc = "New sql scratch file" },
    ["<leader>st"] = { function() scratch ".ts" end, desc = "New ts scratch file" },
    ["<leader>sb"] = { function() scratch ".sh" end, desc = "New shell scratch file" },
    ["<leader>sj"] = { function() scratch ".js" end, desc = "New js scratch file" },
  },
  v = {
    ["<leader>gf"] = { ":OpenInGHFile <CR>", desc = "Open in github" },
    ["y"] = { '"*y', desc = "Copy to system clipboard" },
    ["p"] = { '"*p', desc = "Paste from system clipboard" },
  },
  i = {
    ["<C-h>"] = { "<Left>", desc = "Left" },
    ["<C-j>"] = { "<Down>", desc = "Down" },
    ["<C-k>"] = { "<Up>", desc = "Up" },
    ["<C-l>"] = { "<Right>", desc = "Right" },
  },
  c = {
    ["<C-h>"] = { "<Left>", desc = "Left" },
    ["<C-j>"] = { "<Down>", desc = "Down" },
    ["<C-k>"] = { "<Up>", desc = "Up" },
    ["<C-l>"] = { "<Right>", desc = "Right" },
  },
}
