export DIR_MAKEFILE=.make
include ./$(DIR_MAKEFILE)/env/Makefile
include ./$(DIR_MAKEFILE)/help/Makefile

# Ansible
install-all:
	make install-base
	make install-docker
	make install-nvidia-driver

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
	-cp -r template/.config ~/.config
	-cp -r template/.ssh ~/.ssh
	-cp -r template/git ~/git
	-cp -r template/pigeon ~/pigeon
	-cp template/.bash_aliases ~/.bash_aliases
	-cp template/.bash_profile ~/.bash_profile
	-cp template/.bashrc ~/.bashrc
	-cp template/.tmux.conf ~/.tmux.conf
	-cp template/.vimrc ~/.vimrc