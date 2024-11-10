# Makefile for After Install Linux Setup

# Variables
INSTALL_DIR = /usr/local/bin
CONFIG_DIR = ~/.config
REPO_URL = https://github.com/Ripax/after-install-linux.git
PROJECT_DIR = after-install-linux
DEPENDENCIES = curl git

# Color codes
GREEN = \033[0;32m
CYAN = \033[0;36m
YELLOW = \033[1;33m
RED = \033[0;31m
RESET = \033[0m
BOLD = \033[1m

# Define list of installation tasks
TASKS = install_dependencies configure_system setup_programs cleanup

# Define default target
.PHONY: all
all: install_dependencies configure_system setup_programs cleanup

# Install required dependencies
install_dependencies:
	@echo "$(CYAN)Installing dependencies...$(RESET)"
	@sudo apt update
	@sudo apt install -y $(DEPENDENCIES)
	@echo "$(GREEN)Dependencies installed successfully.$(RESET)"

# Clone or update the repository
clone_repo:
	@echo "$(CYAN)Cloning repository...$(RESET)"
	@git clone $(REPO_URL) $(PROJECT_DIR)
	@echo "$(GREEN)Repository cloned successfully.$(RESET)"

# Configure system settings (e.g., update configs, system tweaks)
configure_system:
	@echo "$(CYAN)Configuring system settings...$(RESET)"
	# Example system configuration commands (customize as needed)
	@echo "$(YELLOW)Creating necessary directories...$(RESET)"
	@mkdir -p $(CONFIG_DIR)
	@echo "$(GREEN)System configuration completed.$(RESET)"

# Install programs or run post-install scripts
setup_programs:
	@echo "$(CYAN)Setting up programs...$(RESET)"
	@cd $(PROJECT_DIR) && ./install.sh
	@echo "$(GREEN)Programs set up successfully.$(RESET)"

# Cleanup any temporary files or directories
cleanup:
	@echo "$(CYAN)Cleaning up temporary files...$(RESET)"
	@rm -rf $(PROJECT_DIR)
	@echo "$(GREEN)Cleanup complete.$(RESET)"

# Install the project (or set up executables)
install: all
	@echo "$(CYAN)Installation complete!$(RESET)"

# Target for uninstalling if needed
uninstall:
	@echo "$(RED)Uninstalling...$(RESET)"
	@sudo rm -rf $(INSTALL_DIR)/$(PROJECT_DIR)
	@rm -rf $(CONFIG_DIR)/$(PROJECT_DIR)
	@echo "$(GREEN)Uninstallation complete.$(RESET)"

# A 'help' target to show available commands
help:
	@echo "$(BOLD)Makefile commands:$(RESET)"
	@echo "  make          - Run the full installation process"
	@echo "  make install  - Run installation tasks"
	@echo "  make uninstall - Uninstall the project"
	@echo "  make help     - Show this help message"
