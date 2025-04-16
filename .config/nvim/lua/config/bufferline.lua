return {
	options = {
    -- TODO: this isn't working
		close_command = "bdelete %d",
		left_mouse_command = "buffer %d",
    show_buffer_close_icons = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true,
      }
    },
	},
}
