return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "Exafunction/codeium.nvim",
      config = function()
        require("codeium").setup {}
      end,
    },
  },

  config = function(_, opts)
    table.insert(opts.sources, 1, { name = "codeium" })
    require("cmp").setup(opts)
  end,
}
