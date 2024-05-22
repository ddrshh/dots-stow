return {
  "neovim/nvim-lspconfig",

  dependencies = {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp'
  },
  config = function()
    -- Setup language servers.
    local lspconfig = require('lspconfig')

    capabilities = require 'cmp_nvim_lsp'.default_capabilities();
    capabilities.textDocument.completion.completionItem.snippetSupport = true

    lspconfig.pyright.setup {
      capabilities = capabilities
    } -- Lua
    lspconfig.clangd.setup {
      capabilities = capabilities
    } -- Lua
    lspconfig.lua_ls.setup {
      capabilities = capabilities
    }

    lspconfig.emmet_ls.setup {
      capabilities = capabilities,
    }

    vim.diagnostic.config({
      virtual_text = false,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
    })

    vim.api.nvim_create_autocmd("CursorHold", {
      callback = function()
        local opts = {
          focusable = false,
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
          border = 'single',
          source = 'always',
          prefix = ' ',
          scope = 'cursor',
        }
        vim.diagnostic.open_float(nil, opts)
      end
    })
  end
}
