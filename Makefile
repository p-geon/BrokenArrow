


# initialize ansible
init-ansible:
	sudo apt install ansible
install-brew:
	sudo ansible-playbook -i /etc/ansible/hosts ansible.yml


##### old
# global vars
## None
# ========================================
# install Docker flow
# ========================================
export TARGET="ubuntu18.04-bionic"
install-docker:
	@./$(TARGET)/install-requirements.sh
	@./$(TARGET)/install-nvidia_driver.sh
	@./$(TARGET)/install-docker.sh
	@./$(TARGET)/install-nvidia_container_toolkit.sh
	@sudo reboot
# ========================================

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