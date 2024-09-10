return {
  "neovim/nvim-lspconfig",
  config = function()
    -- load defaults i.e lua_lsp
    require("nvchad.configs.lspconfig").defaults()

    local lspconfig = require "lspconfig"

    -- EXAMPLE
    local servers = {
      html = {},
      cssls = {},
      pyright = {
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              typeCheckingMode = "basic",
            },
          },
        },
      },
      ts_ls = {
        root_dir = lspconfig.util.root_pattern("tsconfig.json", "package.json", ".git"),
      },
    }
    local configs = require "nvchad.configs.lspconfig"

    for name, opts in pairs(servers) do
      opts.on_init = configs.on_init
      opts.on_attach = configs.on_attach
      opts.capabilities = configs.capabilities

      lspconfig[name].setup(opts)
    end
  end,
}
