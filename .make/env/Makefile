# Check-utils
check: ## check/all
	@make check-env
	@make check-device
	@make check-GPU

check-env: ## check/users
	@whoami
	@id
	@cat /etc/lsb-release

check-device: ## check/devices
	@echo "cpuinfo"
	@cat /proc/cpuinfo
	@echo "check memory"
	@cat /proc/meminfo
	@echo "check Drive Capacity"

check-GPU: ## check/GPU-devices
	@ls -lh
	@echo "lspci -vv | grep -i nvidia" 
	@lspci -vv | grep -i nvidia
	@echo "nvidia-smi"
	@nvidia-smi
