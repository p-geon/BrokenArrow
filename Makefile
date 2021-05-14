export DIR_MAKEFILE=.make
include ./$(DIR_MAKEFILE)/env/Makefile
include ./$(DIR_MAKEFILE)/help/Makefile

install-brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle

export DIR_DOTFILES=./dotfiles
copy-dotfiles:
	@echo "copy bash files"
	-cp $(DIR_DOTFILES)/bash_profile ~/.bash_profile
	-cp $(DIR_DOTFILES)/bashrc ~/.bashrc
	-cp $(DIR_DOTFILES)/bash_aliases ~/.bash_aliases
	@echo "copy zsh files"
	-cp $(DIR_DOTFILES)/zprofile ~/.zprofile
	-cp $(DIR_DOTFILES)/zshrc ~/.zshrc
	@echo 'other dot files'
	-cp $(DIR_DOTFILES)/.tmux.conf ~/.tmux.conf
	-cp $(DIR_DOTFILES)/.vimrc ~/.vimrc


run-gpu:
	docker run --rm tensorflow/tensorflow:2.3.2-gpu nvidia-smi
show-ansible:
	cat /etc/ansible/hosts