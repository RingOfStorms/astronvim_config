local scratch = function(extension)
  os.execute "mkdir -p ~/dev/scratches/"
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
    ["<leader>sq"] = { function() scratch ".sql" end, desc = "New sql scratch file" },
    ["<leader>st"] = { function() scratch ".ts" end, desc = "New ts scratch file" },
    ["<leader>sb"] = { function() scratch ".sh" end, desc = "New shell scratch file" },
    ["<leader>sj"] = { function() scratch ".js" end, desc = "New js scratch file" },
    ["∆"] = {
      "<Esc>:m .+1<CR>==g",
      desc = "Move the line up",
    },
    ["˚"] = {
      "<Esc>:m .-2<CR>==g",
      desc = "Move the line down",
    },
    ["<leader>r"] = { function() require("rest-nvim").run() end, desc = "Send http request" },
    ["<leader>Q"] = { ":qa<CR>", desc = "Quit all" },
    ["<leader>,"] = { name = " Misc Tools" },
    ["<leader>,c"] = { name = " Casing" },
    ["<leader>,cs"] = { ":Snek<CR>", desc = "To Snek Case" },
    ["<leader>,cc"] = { ":Camel<CR>", desc = "To Camel Case" },
    ["<leader>,cp"] = { ":CamelB<CR>", desc = "To Pascal Case" },
    ["<leader>,ck"] = { ":Kebab<CR>", desc = "To Kebab Case" },
    ["<leader>,ce"] = { ":Screm<CR>", desc = "To Screm Case" },
    ["<leader>,j"] = { name = " Jest Tests" },
    ["<leader>,jr"] = { function() require("jester").run() end, desc = "Run test under cursor" },
    ["<leader>,jf"] = { function() require("jester").run_file() end, desc = "Run tests for file" },
    ["<leader>,jl"] = { function() require("jester").run_last() end, desc = "Run last ran test" },
  },
  v = {
    ["<leader>gf"] = { ":OpenInGHFile <CR>", desc = "Open in github" },
    ["y"] = { '"*y', desc = "Copy to system clipboard" },
    ["p"] = { '"*p', desc = "Paste from system clipboard" },
    ["∆"] = {
      cmd = ":m '>+1<CR>gv=gv",
      desc = "Move the selected text up",
    },
    ["˚"] = {
      cmd = ":m '<-2<CR>gv=gv",
      desc = "Move the selected text down",
    },
    ["<leader>,"] = { name = " Misc Tools" },
    ["<leader>,c"] = { name = " Casing" },
    ["<leader>,cs"] = { ":Snek<CR>", desc = "To Snek Case" },
    ["<leader>,cc"] = { ":Camel<CR>", desc = "To Camel Case" },
    ["<leader>,cp"] = { ":CamelB<CR>", desc = "To Pascal Case" },
    ["<leader>,ck"] = { ":Kebab<CR>", desc = "To Kebab Case" },
    ["<leader>,ce"] = { ":Screm<CR>", desc = "To Screm Case" },
  },
  x = {
    ["∆"] = {
      cmd = ":m '>+1<CR>gv=gv",
      desc = "Move the selected text up",
    },
    ["˚"] = {
      desc = "Move the selected text down",
      cmd = ":m '<-2<CR>gv=gv",
    },
  },
  i = {
    ["<C-k>"] = { "<Up>", desc = "Up" },
    ["<C-j>"] = { "<Down>", desc = "Down" },
    ["<C-h>"] = { "<Left>", desc = "Left" },
    ["<C-l>"] = { "<Right>", desc = "Right" },
  },
  c = {
    ["<C-h>"] = { "<Left>", desc = "Left" },
    ["<C-j>"] = { "<Down>", desc = "Down" },
    ["<C-k>"] = { "<Up>", desc = "Up" },
    ["<C-l>"] = { "<Right>", desc = "Right" },
  },
}
