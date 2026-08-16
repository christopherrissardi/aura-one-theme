#!/usr/bin/env bash
# ==============================================================================
# 🎨 Aura One Theme Suite - Installer
# Author: Christopher Rissardi (https://github.com/christopherrissardi)
# License: MIT
# ==============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
GREEN='\033[1;32m'
BLUE='\033[1;34m'
CYAN='\033[1;36m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
NC='\033[0m'

echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}   🌌 AURA ONE THEME SUITE - INSTALLER${NC}"
echo -e "${BLUE}   👤 Creator: Christopher Rissardi (https://github.com/christopherrissardi)${NC}"
echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}\n"

# 1. Check Python & Gio
if ! command -v python3 >/dev/null 2>&1; then
    echo -e "${RED}Error: Python 3 is required but not installed.${NC}"
    exit 1
fi

# 2. Install Themes
echo -e "${YELLOW}[1/4] Installing 36 Aura-One themes into ~/.local/share/themes/...${NC}"
mkdir -p "$HOME/.local/share/themes"
cp -a "$SCRIPT_DIR/themes/"* "$HOME/.local/share/themes/"
echo -e "${GREEN}  ✓ Themes installed successfully.${NC}\n"

# 3. Install CLI Controller and Daemon
echo -e "${YELLOW}[2/4] Installing CLI tool and sync daemon into ~/.local/bin/...${NC}"
mkdir -p "$HOME/.local/bin"
cp -a "$SCRIPT_DIR/bin/switch-theme" "$HOME/.local/bin/switch-theme"
cp -a "$SCRIPT_DIR/bin/aura-theme-daemon" "$HOME/.local/bin/aura-theme-daemon"
chmod +x "$HOME/.local/bin/switch-theme" "$HOME/.local/bin/aura-theme-daemon"

# Ensure ~/.local/bin is in PATH for this session
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi
echo -e "${GREEN}  ✓ Executables installed (switch-theme, aura-theme-daemon).${NC}\n"

# 4. Install Systemd Service & Autostart
echo -e "${YELLOW}[3/4] Enabling real-time sync daemon (systemd user service)...${NC}"
mkdir -p "$HOME/.config/systemd/user" "$HOME/.config/autostart"
cp -a "$SCRIPT_DIR/systemd/aura-theme-daemon.service" "$HOME/.config/systemd/user/"
cp -a "$SCRIPT_DIR/autostart/aura-theme-daemon.desktop" "$HOME/.config/autostart/"

if command -v systemctl >/dev/null 2>&1; then
    systemctl --user daemon-reload 2>/dev/null || true
    systemctl --user enable --now aura-theme-daemon.service 2>/dev/null || true
fi
echo -e "${GREEN}  ✓ Real-time sync daemon active and running.${NC}\n"

# 5. Apply Default OLED Theme
echo -e "${YELLOW}[4/4] Applying default Aura-One-OLED theme...${NC}"
if [ -x "$HOME/.local/bin/switch-theme" ]; then
    "$HOME/.local/bin/switch-theme" oled blue >/dev/null 2>&1 || true
fi
echo -e "${GREEN}  ✓ Aura One OLED theme applied successfully across all apps!${NC}\n"

echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}  🎉 INSTALLATION COMPLETE / INSTALAÇÃO CONCLUÍDA!${NC}"
echo -e "  Use the CLI tool to change themes anytime:"
echo -e "    ${CYAN}switch-theme${NC}                   (Interactive TUI Menu)"
echo -e "    ${CYAN}switch-theme oled purple${NC}       (OLED Black + Purple Accent)"
echo -e "    ${CYAN}switch-theme transparent green${NC} (Translucent Glass + Green Accent)"
echo -e "    ${CYAN}switch-theme darker #ff007f${NC}    (Darker + Custom Hex Color)"
echo -e "\n  Or pick any of the 36 themes directly in ${YELLOW}GNOME Tweaks${NC}!"
echo -e "${CYAN}═══════════════════════════════════════════════════════════════════════${NC}\n"
