return {
  "sindrets/diffview.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose" },
  config = function()
    require("diffview").setup {
      -- Optional config
    }
  end,
}
