  -- TODO: I should add harpoon later. first check out ThePRimeagen video about it. I think there is one.
  -- TODO: Add phaazon/hop.nvim. I want to practice the basic movements first.

lvim.plugins = {
  { "christoomey/vim-tmux-navigator" },
  -- NOTE: Just check the docs.... it is usefull
  -- vim repeat is connecting to it as well
  { "tpope/vim-surround" },

  -- INFO: themes
  -- NOTE: At first i had to put the "lazy = false" in the theme, or the theme swither couldn't find it
  { "folke/tokyonight.nvim" },
  { "tribela/vim-transparent" },

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
}
