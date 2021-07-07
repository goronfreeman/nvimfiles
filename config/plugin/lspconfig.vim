lua <<EOF
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

require'lspconfig'.cssls.setup{}
require('lspconfig').html.setup({
  filetypes = { "html", "eruby" }
})
require('lspconfig').solargraph.setup{}
require('lspconfig').tsserver.setup {
  capabilities = capabilities
}
EOF
