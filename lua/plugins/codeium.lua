return {
  "Exafunction/codeium.nvim",
  event = "BufEnter",
  opts = {
    enable_chat = true,
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup {}
  end,
}
