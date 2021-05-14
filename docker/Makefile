SHELL=/bin/bash

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
	echo 'need reboot'

install-nvidia-driver:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-nvidia-driver.yml
	echo "needs restart"