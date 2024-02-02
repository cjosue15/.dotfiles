return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "angular-language-server",
        "prettier",
      })
    end,
  },
  -- lsp
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        textDocument = {
          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
      setup = {
        angularls = function(_, opts)
          opts.on_attach = function(client, _)
            client.server_capabilities.documentRangeFormattingProvider = false
            client.server_capabilities.foldingRangeProvider = false
          end
        end,
      },
    },
  },
}
