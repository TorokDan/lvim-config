lvim.plugins = {
-- TODO: Not configured yet
-- NOTE: It can save the opened tabs. Looks really usefull.
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function ()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },
  -- NOTE: It is for the escape with "jj" characters.
  {
    "max397574/better-escape.nvim",
    config = function ()
      require("better_escape").setup()
    end,
  },
}
