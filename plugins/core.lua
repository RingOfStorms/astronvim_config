return {
        -- customize alpha options
        {
                "goolord/alpha-nvim",
                -- config = function()
                --   local alpha = require("alpha")
                --   local dashboard = require("alpha.themes.dashboard")
                --   require("alpha.term")
                --
                --   local header = {
                --     type = "terminal",
                --     command = "curl -s https://textart.sh/topic/bonsai/more\\?skip\\=$(if command -v jot >/dev/null 2>&l; then jot -r 1 127; else shuf -i 0-271 -n 1; fi)\\&limit\\=1 | sed -n '/<pre.*$/,/<\\/pre>/p' | sed 's/^.*>//gm'",
                --     width = 180,
                --     height = 80,
                --     opts = {
                --       position = "center",
                --       hl = "String",
                --     },
                --   }
                --
                --   local buttons = {
                --     type = "group",
                --     val = {
                --       { type = "text",    val = "Joshua Bell :: RingOfStorms", opts = { hl = "SpecialComment", position = "center" } },
                --       { type = "padding", val = 1 },
                --       dashboard.button("SPC n", " " .. " New File"),
                --       dashboard.button("SPC f f", " " .. " Find File"),
                --       dashboard.button("SPC f w", " " .. " Find Word"),
                --       -- dashboard.button("SPC q", " " .. " Quit", ":qa<CR>"),
                --     },
                --   }
                --
                --   local top_padding = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) })
                --
                --   local config = {
                --     layout = {
                --       { type = "padding", val = top_padding },
                --       header,
                --       { type = "padding", val = 14 },
                --       { type = "padding", val = 2 },
                --       buttons,
                --     },
                --   }
                --
                --   alpha.setup(config)
                -- end,
                opts = function(_, opts)
                        -- customize the dashboard header
                        opts.section.header.val = {
                                "                                                                                                                            ▒▒▒▒▒▒                                ",
                                "                                                                                                                  ▒▒▓▓▓▓▒▒▒▒▒▒▒▒                                  ",
                                "        ▓▓▒▒▒▒▒▒▒▒░░                                                                                                  ▓▓                                          ",
                                "      ▒▒▓▓▓▓▓▓▓▓▓▓▓▓░░░░                                                                                        ▒▒▒▒▓▓▒▒▒▒                                        ",
                                "  ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓░░                                                                                    ▒▒▓▓▓▓▓▓▒▒▒▒▒▒                                      ",
                                "    ▓▓▓▓▓▓▓▓▓▓  ██▓▓▓▓▓▓▓▓                                                                                ▒▒▒▒    ██                                              ",
                                "  ██▓▓▓▓  ▓▓████▓▓▓▓                                                                                  ▒▒▒▒▒▒▒▒▓▓██▓▓  ▒▒▒▒▒▒                                      ",
                                "        ██  ██      ▒▒▒▒▒▒░░░░                ▒▒▒▒▒▒                          ▓▓▓▓▓▓              ▒▒▒▒▓▓▓▓██▓▓▒▒▒▒██▒▒▒▒▒▒▒▒▒▒                                    ",
                                "      ▒▒▒▒▓▓  ▒▒▒▒▓▓▓▓▓▓▓▓▓▓▒▒░░            ░░▒▒▒▒▒▒▒▒▒▒              ▒▒▒▒  ▒▒▓▓▓▓▓▓▒▒▒▒▒▒▒▒                ██▓▓    ▓▓▓▓▓▓▓▓▒▒▒▒          ▓▓    ▒▒                ",
                                "    ▒▒▓▓▓▓██▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒          ▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░          ▒▒▓▓▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓                ░░██▓▓  ██▓▓        ▒▒    ▒▒▒▒▓▓▒▒▒▒▓▓    ▒▒  ▒▒      ",
                                "  ▒▒▓▓▓▓▓▓██▓▓▓▓▓▓████▓▓▓▓▓▓▓▓▓▓    ▒▒      ▒▒▒▒▒▒▒▒▒▒            ▓▓▓▓▓▓▓▓▓▓██▓▓▓▓██▓▓▓▓▓▓▓▓                    ████▓▓▓▓▓▓▒▒        ██▒▒██▒▒▓▓▓▓▒▒▓▓▓▓▒▒▓▓▓▓██▓▓  ",
                                "  ▓▓▓▓▓▓▓▓██▓▓██  ████  ▓▓▓▓▓▓▓▓  ▒▒▒▒▒▒▒▒▒▒  ▒▒▓▓▒▒  ▒▒▒▒▒▒  ░░██  ▓▓▓▓▓▓▓▓██▓▓  ▓▓██▓▓  ▓▓      ▒▒▒▒▒▒▒▒▒▒▒▒    ██▓▓                ██▓▓▓▓▓▓▓▓▓▓██▓▓▓▓▒▒▓▓▓▓▒▒▓▓",
                                "  ░░▓▓▓▓░░░░████████░░  ░░▓▓▓▓░░  ░░▒▒▒▒▒▒▒▒░░▒▒▓▓▒▒░░▒▒▒▒░░  ░░██  ▓▓░░▓▓░░░░▓▓  ▓▓░░▓▓▒▒▓▓    ▒▒▓▓▓▓▓▓▓▓▒▒▒▒░░▒▒▓▓░░                ██▓▓▓▓▓▓██▓▓██░░██▓▓▓▓▓▓▒▒▓▓",
                                "    ░░░░    ░░██▓▓░░      ░░░░    ░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░  ░░██  ▓▓  ▓▓    ▓▓  ░░  ▓▓▓▓░░░░  ░░░░░░░░░░▓▓▓▓▒▒██░░  ░░░░░░        ▒▒░░▓▓▓▓▓▓██░░██▒▒░░▓▓██▓▓▓▓░░",
                                "              ██▓▓                ▒▒  ▒▒▒▒▒▒▒▒  ▓▓▓▓▒▒▒▒▒▒▒▒    ░░  ▓▓  ▓▓    ██    ▓▓▓▓▓▓  ▓▓            ▓▓██▓▓▓▓  ▒▒▒▒▒▒▒▒▒▒          ██░░██      ██▓▓████  ░░  ",
                                "              ██▓▓                ░░  ▒▒░░▓▓░░  ▓▓▒▒░░▒▒░░▒▒        ▓▓  ██    ░░  ▒▒▓▓░░▓▓  ▓▓            ░░░░████▒▒▓▓▓▓▓▓▒▒▒▒░░        ░░  ░░      ██▓▓░░░░      ",
                                "              ██▓▓                          ▒▒▒▒▒▒                  ▓▓          ██▓▓    ██  ██                  ████▓▓██  ▓▓  ▓▓▒▒                ████            ",
                                "          ▓▓▓▓██▓▓▓▓▓▓                        ▓▓▒▒                            ▓▓▓▓                              ██▓▓                      ▓▓▓▓▓▓▓▓██▓▓▓▓▓▓▓▓      ",
                                "      ████▓▓██████▓▓▓▓████            ▓▓▓▓▓▓▓▓▓▓▒▒▓▓▓▓██▓▓            ████████▓▓▓▓████████                  ██████▓▓████                ██▒▒▓▓▓▓██████▓▓▓▓▒▒██    ",
                                "    ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▓▓▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▓▓▓▓▓▓▓▓        ▓▓▒▒▓▓██████▓▓▓▓▓▓▓▓▒▒██            ▓▓▓▓▓▓▓▓██▓▓▓▓▓▓▓▓▓▓          ▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒██  ",
                                "    ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓      ▒▒▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒        ▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒        ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██  ",
                                "    ▓▓▓▓▓▓▓▓▒▒▓▓▓▓▓▓▓▓▒▒▒▒▓▓        ▓▓▒▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▓▓      ██▓▓▒▒▒▒▓▓▒▒▒▒▒▒▒▒▓▓▒▒▒▒▒▒██        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒▒▒▒██  ",
                                "      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓          ▓▓▒▒▒▒░░░░░░░░░░░░░░░░▓▓      ░░██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██            ▓▓▓▓▓▓▒▒▒▒▒▒▓▓▒▒▒▒▓▓          ░░▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓    ",
                                "                                      ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓          ░░████████████████████░░              ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓░░          ░░  ████▓▓▓▓▓▓▓▓▓▓████░░",
                                -- "  .-------.   .-./`) ,---.   .--.  .-_'''-.       ,-----.     ________    .-'''-. ,---------.    ,-----.    .-------.    ,---.    ,---.   .-'''-. ",
                                -- "  |  _ _   \\  \\ .-.')|    \\  |  | '_( )_   \\    .'  .-,  '.  |        |  / _     \\\\          \\ .'  .-,  '.  |  _ _   \\   |    \\  /    |  / _     \\",
                                -- "  | ( ' )  |  / `-' \\|  ,  \\ |  ||(_ o _)|  '  / ,-.|  \\ _ \\ |   .----' (`' )/`--' `--.  ,---'/ ,-.|  \\ _ \\ | ( ' )  |   |  ,  \\/  ,  | (`' )/`--'",
                                -- "  |(_ o _) /   `-'`\"`|  |\\_ \\|  |. (_,_)/___| ;  \\  '_ /  | :|  _|____ (_ o _).       |   \\  ;  \\  '_ /  | :|(_ o _) /   |  |\\_   /|  |(_ o _).   ",
                                -- "  | (_,_).' __ .---. |  _( )_\\  ||  |  .-----.|  _`,/ \\ _/  ||_( )_   | (_,_). '.     :_ _:  |  _`,/ \\ _/  || (_,_).' __ |  _( )_/ |  | (_,_). '. ",
                                -- "  |  |\\ \\  |  ||   | | (_ o _)  |'  \\  '-   .': (  '\\_/ \\   ;(_ o._)__|.---.  \\  :    (_I_)  : (  '\\_/ \\   ;|  |\\ \\  |  || (_ o _) |  |.---.  \\  :",
                                -- "  |  | \\ `'   /|   | |  (_,_)\\  | \\  `-'`   |  \\ `\"/  \\  ) / |(_,_)    \\    `-'  |   (_(=)_)  \\ `\"/  \\  ) / |  | \\ `'   /|  (_,_)  |  |\\    `-'  |",
                                -- "  |  |  \\    / |   | |  |    |  |  \\        /   '. \\_/``\".'  |   |      \\       /     (_I_)    '. \\_/``\".'  |  |  \\    / |  |      |  | \\       / ",
                                -- "  ''-'   `'-'  '---' '--'    '--'   `'-...-'      '-----'    '---'       `-...-'      '---'      '-----'    ''-'   `'-'  '--'      '--'  `-...-'  ",
                                "",
                                "                                                                     ██╗ ██████╗ ███████╗██╗  ██╗",
                                "                                                                     ██║██╔═══██╗██╔════╝██║  ██║",
                                "                                                                     ██║██║   ██║███████╗███████║",
                                "                                                                ██   ██║██║   ██║╚════██║██╔══██║",
                                "                                                                ╚█████╔╝╚██████╔╝███████║██║  ██║",
                                "                                                                 ╚════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝",
                        }
                        return opts
                end,
        },
        -- You can disable default plugins as follows:
        -- { "max397574/better-escape.nvim", enabled = false },
        --
        -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
        -- {
        --   "L3MON4D3/LuaSnip",
        --   config = function(plugin, opts)
        --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
        --     -- add more custom luasnip configuration such as filetype extend or custom snippets
        --     local luasnip = require "luasnip"
        --     luasnip.filetype_extend("javascript", { "javascriptreact" })
        --   end,
        -- },
        -- {
        --   "windwp/nvim-autopairs",
        --   config = function(plugin, opts)
        --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
        --     -- add more custom autopairs configuration such as custom rules
        --     local npairs = require "nvim-autopairs"
        --     local Rule = require "nvim-autopairs.rule"
        --     local cond = require "nvim-autopairs.conds"
        --     npairs.add_rules(
        --       {
        --         Rule("$", "$", { "tex", "latex" })
        --           -- don't add a pair if the next character is %
        --           :with_pair(cond.not_after_regex "%%")
        --           -- don't add a pair if  the previous character is xxx
        --           :with_pair(
        --             cond.not_before_regex("xxx", 3)
        --           )
        --           -- don't move right when repeat character
        --           :with_move(cond.none())
        --           -- don't delete if the next character is xx
        --           :with_del(cond.not_after_regex "xx")
        --           -- disable adding a newline when you press <cr>
        --           :with_cr(cond.none()),
        --       },
        --       -- disable for .vim files, but it work for another filetypes
        --       Rule("a", "a", "-vim")
        --     )
        --   end,
        -- },
        -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
        -- {
        --   "folke/which-key.nvim",
        --   config = function(plugin, opts)
        --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
        --     -- Add bindings which show up as group name
        --     local wk = require "which-key"
        --     wk.register({
        --       b = { name = "Buffer" },
        --     }, { mode = "n", prefix = "<leader>" })
        --   end,
        -- },
}
