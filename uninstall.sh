#!/usr/bin/env bash
# ==============================================================================
# 🗑️ Aura One Theme Suite - Uninstaller
# Author: Christopher Rissardi (https://github.com/christopherrissardi)
# License: MIT
# ==============================================================================

set -e

RED='\033[1;31m'
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
CYAN='\033[1;36m'
NC='\033[0m'

echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${RED}   🗑️ AURA ONE THEME SUITE - UNINSTALLER${NC}"
echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}\n"

echo -e "${YELLOW}[1/4] Stopping and disabling sync daemon...${NC}"
if command -v systemctl >/dev/null 2>&1; then
    systemctl --user stop aura-theme-daemon.service 2>/dev/null || true
    systemctl --user disable aura-theme-daemon.service 2>/dev/null || true
fi
rm -f "$HOME/.config/systemd/user/aura-theme-daemon.service"
rm -f "$HOME/.config/autostart/aura-theme-daemon.desktop"
echo -e "${GREEN}  ✓ Daemon removed.${NC}\n"

echo -e "${YELLOW}[2/4] Removing themes from ~/.local/share/themes/...${NC}"
rm -rf "$HOME/.local/share/themes/Aura-One"*
echo -e "${GREEN}  ✓ Aura-One themes removed.${NC}\n"

echo -e "${YELLOW}[3/4] Removing CLI and daemon binaries...${NC}"
rm -f "$HOME/.local/bin/switch-theme" "$HOME/.local/bin/aura-theme-daemon"
echo -e "${GREEN}  ✓ Executables removed.${NC}\n"

echo -e "${YELLOW}[4/4] Restoring stock GNOME default theme...${NC}"
gsettings set org.gnome.shell.extensions.user-theme name '' 2>/dev/null || true
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita' 2>/dev/null || true
rm -f "$HOME/.config/gtk-4.0/gtk.css" "$HOME/.config/gtk-3.0/gtk.css" "$HOME/.gtkrc-2.0"
echo -e "${GREEN}  ✓ GNOME defaults restored.${NC}\n"

echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  ✓ Aura One Theme Suite successfully uninstalled.${NC}"
echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}\n"
