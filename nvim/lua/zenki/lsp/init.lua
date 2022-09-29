local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "zenki.lsp.configs"
require("zenki.lsp.handlers").setup()
require "zenki.lsp.null-ls"
