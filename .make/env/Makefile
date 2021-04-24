# Check-utils
check:
	@make check-env
	@make check-device
	@make check-GPU
check-env:
	@whoami
	@id
	@cat /etc/lsb-release
check-device:
	@echo "cpuinfo"
	@cat /proc/cpuinfo
	@echo "check memory"
	@cat /proc/meminfo
	@echo "check Drive Capacity"
check-GPU:
	@ls -lh
	@echo "lspci -vv | grep -i nvidia" 
	@lspci -vv | grep -i nvidia
	@echo "nvidia-smi"
	@nvidia-smi
