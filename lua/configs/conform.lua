local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    javascriptreact = { "prettier" },
    typescriptreact = { "prettier" },
    graphql = { "prettier" },
    json = { "prettier" },
    yaml = { "prettier" },
    markdown = { "prettier" },
    python = { "autopep8" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    async = true,
    timeout_ms = 1000,
    lsp_fallback = true,
  },
}

return options
