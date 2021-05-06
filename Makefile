export DIR_MAKEFILE=.make
include ./$(DIR_MAKEFILE)/env/Makefile
include ./$(DIR_MAKEFILE)/help/Makefile

# Ansible
install-all:
	make install-base
	make install-docker
	make install-nvidia-driver

install-brew:
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	brew bundle

install-base:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-base.yml
install-docker:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-docker.yml
	docker run --rm hello-world
install-nvidia-driver:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-nvidia-driver.yml
	echo "needs restart"
show-ansible:
	cat /etc/ansible/hosts

run-gpu:
	docker run --rm tensorflow/tensorflow:2.3.2-gpu nvidia-smi

# root files
initialize:
	@echo "copy .config, .ssh"
	-cp -r template/.config ~/.config
	-cp -r template/.ssh ~/.ssh
	-chmod 600 ~/.ssh/contents
	@echo "copy kaggle files"
	-cp -r template/.kaggle ~/.kaggle
	-chmod 600 ~/.kaggle/kaggle.json
	@echo "copy dirs"
	-cp -r template/data ~/data
	-cp -r template/pigeon ~/pigeon
	@echo "copy .tmux.conf, .vimrc"
	-cp template/.tmux.conf ~/.tmux.conf
	-cp template/.vimrc ~/.vimrc
	@echo "copy bash files"
	-cp .bash_aliases ~/.bash_aliases
	-cp .bash_profile ~/.bash_profile
	-cp .bashrc ~/.bashrc