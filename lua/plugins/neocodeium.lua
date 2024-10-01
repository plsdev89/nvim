-- return {
--   "hrsh7th/nvim-cmp",
--   dependencies = {
--     {
--       "Exafunction/codeium.nvim",
--       config = function()
--         require("codeium").setup {}
--       end,
--     },
--   },
--
--   config = function(_, opts)
--     table.insert(opts.sources, 1, { name = "codeium" })
--     require("cmp").setup(opts)
--   end,
-- }

return {
  "monkoose/neocodeium",
  event = "VeryLazy",
  config = function()
    local neocodeium = require "neocodeium"
    neocodeium.setup()
    vim.keymap.set("i", "<A-y>", function()
      require("neocodeium").accept()
    end, { desc = "Codeium Accept suggestion" })
    vim.keymap.set("i", "<A-n>", function()
      require("neocodeium").cycle_or_complete()
    end, { desc = "Codeium Cycle suggestion" })
    vim.keymap.set("i", "<A-c>", function()
      require("neocodeium").clear()
    end, { desc = "Codeium Clear suggestion" })
  end,
}
