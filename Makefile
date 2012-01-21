all:
	@echo "\n" && \
	echo "\t\tgoatslacker's dotfiles" && \
	echo "\n" && \
	echo "\tinstall\t\tinstalls dotfiles into home directory" && \
	echo "\tupdate\t\tupdates the repository" && \
	echo "\n"

install:
	@rsync --verbose --recursive --exclude-from=rsync-include . ~/.

update:
	@rsync --verbose --recursive --exclude-from=rsync-include ~/. .

gnome:
	@gconftool-2 --set "/apps/gnome-terminal/profiles/Default/cursor_shape" --type string "underline" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/font" --type string "Inconsolata-dz for Powerline Medium 11" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_system_font" --type bool false && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/scroll_on_output" --type bool false && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/scrollback_lines" --type int 9001 && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_darkness" --type float 0.98 && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_type" --type string "transparent" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/visible_name" --type string "goatslacker" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/alternate_screen_scroll" --type bool true && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/visible_name" --type string "goatslacker" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/pallete" --type string "#2E2E34343636:#CCCC00000000:#4E4E9A9A0606:#C4C4A0A00000:#34346565A4A4:#757550507B7B:#060698209A9A:#D3D3D7D7CFCF:#555557575353:#EFEF29292929:#8A8AE2E23434:#FCFCE9E94F4F:#72729F9FCFCF:#ADAD7F7FA8A8:#3434E2E2E2E2:#EEEEEEEEECEC" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "#202020202020" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "#FFFFFFFFFFFF" && \
	gconftool-2 --set "/apps/gnome-terminal/profiles/Default/bold_color" --type string "#000000000000" && \
	gconftool-2 --set "/apps/gnome-terminal/keybindings/prev_tab" --type string "<Shift>Left" && \
	gconftool-2 --set "/apps/gnome-terminal/keybindings/next_tab" --type string "<Shift>Right"

.PHONY: vim linux
