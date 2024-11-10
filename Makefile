# Makefile for After Install Linux Setup

# Variables
INSTALL_DIR = ~/tools
CONFIG_DIR = ~/.config
REPO_URL = https://github.com/Ripax/after-install-linux.git
PROJECT_DIR = after-install-linux
DEPENDENCIES = curl git gnome-shell-extension-manager conky-all alacritty xbindkeys pcoip-client

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
	@echo "$(CYAN)Checking for dependencies...$(RESET)"
	@for dep in $(DEPENDENCIES); do \
		if ! dpkg -l | grep -q $$dep; then \
			echo "$(CYAN)Installing $$dep...$(RESET)"; \
			sudo apt install -y $$dep; \
		else \
			echo "$(GREEN)$$dep is already installed.$(RESET)"; \
		fi \
	done

# Create necessary directories if they don't exist
make_directory:
	@echo "$(CYAN)Checking if directories exist...$(RESET)"
	@for dir in /software /games /jobs; do \
		if [ ! -d $$dir ]; then \
			echo "$(CYAN)Creating directory $$dir...$(RESET)"; \
			mkdir -p $$dir; \
			sudo chown $$USER:$$USER $$dir; \
		else \
			echo "$(GREEN)Directory $$dir already exists.$(RESET)"; \
		fi \
	done

# Clone or update the repository
clone_repo:
	@echo "$(CYAN)Checking if repository exists...$(RESET)"
	@if [ ! -d "$(PROJECT_DIR)" ]; then \
		echo "$(CYAN)Cloning repository...$(RESET)"; \
		git clone $(REPO_URL) $(PROJECT_DIR); \
		curl -1sLf https://dl.anyware.hp.com/DeAdBCiUYInHcSTy/pcoip-client/cfg/setup/bash.deb.sh | sudo -E distro=ubuntu codename=jammy bash; \
		echo "$(GREEN)Repository cloned successfully.$(RESET)"; \
	else \
		echo "$(GREEN)Repository already cloned.$(RESET)"; \
	fi

# Configure system settings (e.g., update configs, system tweaks)
configure_system:
	@echo "$(CYAN)Configuring system settings...$(RESET)"
	@if [ ! -d "$(CONFIG_DIR)" ]; then \
		echo "$(YELLOW)Creating configuration directory $(CONFIG_DIR)...$(RESET)"; \
		mkdir -p $(CONFIG_DIR); \
	else \
		echo "$(GREEN)Configuration directory $(CONFIG_DIR) already exists.$(RESET)"; \
	fi
	@echo "$(GREEN)System configuration completed.$(RESET)"

# Install programs or run post-install scripts
setup_programs:
	@echo "$(CYAN)Setting up programs...$(RESET)"
	@if [ -d "$(PROJECT_DIR)" ]; then \
		cd $(PROJECT_DIR) && ./install.sh; \
		echo "$(GREEN)Programs set up successfully.$(RESET)"; \
	else \
		echo "$(RED)Repository directory $(PROJECT_DIR) does not exist. Clone it first!$(RESET)"; \
		exit 1; \
	fi

# Cleanup any temporary files or directories
cleanup:
	@echo "$(CYAN)Cleaning up temporary files...$(RESET)"
	@if [ -d "$(PROJECT_DIR)" ]; then \
		rm -rf $(PROJECT_DIR); \
		echo "$(GREEN)Cleanup complete.$(RESET)"; \
	else \
		echo "$(RED)No directory to clean. $(PROJECT_DIR) does not exist.$(RESET)"; \
	fi

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
