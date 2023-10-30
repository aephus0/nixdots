local bufferline_status_ok, bufferline = pcall(require, "bufferline")
if not bufferline_status_ok then
	return
end

bufferline.setup({
	options = {
		mode = "buffers",
		diagnostics = "nvim_lsp",
		numbers = "ordinal",
		buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
		right_trunc_marker = '',
		offsets = {
				{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "left",
						separator = true
				}
		},


	}
})
