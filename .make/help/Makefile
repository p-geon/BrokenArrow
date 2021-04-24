# ====================
# help
# ====================
help: ## utils/this help
	@grep -E '^[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN \
			{FS = ":"}; \
			{sub("Makefile", "");}; \
			{split(substr($$3, 5), arr, "/")}; \
			{printf "\033[31m %-s\033[36m%-10s \033[0m[\033[33m %-7s\033[0m] %-7s \n" \
				, $$1 \
				, $$2 \
				, arr[1] \
				, arr[2] \
			}'