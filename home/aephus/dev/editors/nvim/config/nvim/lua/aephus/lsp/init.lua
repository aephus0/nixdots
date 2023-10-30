local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("aephus.lsp.mason")
require("aephus.lsp.handlers").setup()
require("aephus.lsp.null-ls")
