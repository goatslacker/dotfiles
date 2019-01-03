all:
	@echo "\n"
	@echo "\t\tgoatslacker's dotfiles"
	@echo "\n"
	@echo "\tinstall\t\tinstalls dotfiles into home directory"
	@echo "\tupdate\t\tupdates the repository"
	@echo "\n"

install:
	@rsync --verbose --recursive --exclude-from=rsync-include . ~/.

update:
	@rsync --verbose --recursive --exclude-from=rsync-include ~/. .
