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
    end, { desc = "Accept codeium suggestion" })
    vim.keymap.set("i", "<A-n>", function()
      require("neocodeium").cycle_or_complete()
    end, { desc = "Cycle or complete codeium suggestion" })
    vim.keymap.set("i", "<A-c>", function()
      require("neocodeium").clear()
    end, { desc = "Clear codeium suggestion" })
  end,
}
