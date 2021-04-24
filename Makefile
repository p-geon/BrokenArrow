export DIR_MAKEFILE=.make
include ./$(DIR_MAKEFILE)/env/Makefile
include ./$(DIR_MAKEFILE)/help/Makefile

# Ansible
install-all:
	make install-base
	make install-docker
	make install-cuda

install-base:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-base.yml
install-docker:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-docker.yml
	docker run --rm hello-world
install-nvidia-driver:
	sudo ansible-playbook -i /etc/ansible/hosts ansible/install-nvidia-driver.yml
	docker run --rm --gpus all nvidia/cuda:11.0-base nvidia-smi
show-ansible:
	cat /etc/ansible/hosts

# ========================================
# Git
export FNAME_GITCONFIG=config-git/.gitconfig
export FNAME_GITCONFIG_USER=config-git/.gitconfig_pigeon
.PHONY: setup-git
setup-git: ## override email -> mv .gitconfig&.gitconfig_pigeon -> mkdir pigeon -> setup ssh
	@echo "override email"
	@read -p "your mail address(ac.jp): " mail; \
	sed -i -e '3d' $(FNAME_GITCONFIG_USER);\
	echo "	email = $$mail" >> $(FNAME_GITCONFIG_USER)
	-@cp $(FNAME_GITCONFIG) ~/$(FNAME_GITCONFIG)
	-@cp $(FNAME_GITCONFIG_USER) ~/$(FNAME_GITCONFIG_USER)
	-@mkdir ~/git
	@echo "finalize"
	@sed -i -e '3d' $(FNAME_GITCONFIG_USER)
	@echo "	email = ___@gmail.com" >> $(FNAME_GITCONFIG_USER)
	-@mkdir ~/.ssh
	-@cp config-ssh/config ~/.ssh/config
	@touch ~/.ssh/id_rsa.git.pigeon
	@chmod 600 ~/.ssh/id_rsa.git.pigeon
	@echo "Done"