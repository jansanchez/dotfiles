return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
        jsonls = {},
        yamlls = {},
        dockerls = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { checkThirdParty = false },
            },
          },
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "dockerfile-language-server",
        "json-lsp",
        "lua-language-server",
        "stylua",
        "shellcheck",
        "shfmt",
        "yaml-language-server",
      },
    },
  },
}
