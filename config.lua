-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- INFO: Basic tasks i should do to improve my vim
-- TODO: learn some lua.....
-- TODO: confifure whichkeys
-- TODO: look up what exactly buffers are, and how are they working
-- TODO: separate the configuration into different files
-- TODO: find a dictionary plugin
-- TODO: look up some usefull plugins. maybe I shouold start to check some folke repos
-- TODO: maybe I should write a documentation for me, so I can understand the things later
-- TODO: maybe configura alpha, for better greetings

lvim.colorscheme = "tokyonight"

lvim.scrolloff = 8

-- INFO: plugin
lvim.plugins = {
  { "christoomey/vim-tmux-navigator" },
  -- NOTE: Just check the docs.... it is usefull
  -- vim repeat is connecting to it as well
  { "tpope/vim-surround" },
  -- TODO: I should add harpoon later. first check out ThePRimeagen video about it. I think there is one.
  -- TODO: Add phaazon/hop.nvim. I want to practice the basic movements first.

  -- themes
  -- NOTE: At first i had to put the "lazy = false" in the theme, or the theme swither couldn't find it
  { "folke/tokyonight.nvim" },

  {
    -- TODO: I need to look up what type of tags there are for this plugin.
    -- I need to configure it as well. There are lots of options.
    "folke/todo-comments.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
      require("todo-comments").setup()
    end
  },
-- TODO: Not configured yet
-- NOTE: It can save the opened tabs. Looks really usefull.
  -- {
  --   "folke/persistence.nvim",
  --   event = "BufReadPre",
  --   config = function ()
  --     require("persistence").setup({
  --       dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
  --       options = { "buffers", "curdir", "tabpages", "winsize" }
  --     })
  --   end
  -- },
}



-- INFO: keybindings
-- TODO: Need to configure whichkeys
lvim.keys.insert_mode["jj"] = "<ESC>"
