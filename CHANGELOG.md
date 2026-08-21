# 📝 Changelog

Todas as mudanças notáveis deste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Semantic Versioning](https://semver.org/lang/pt-BR/).

---

## [1.1.0] - 2026-08-21

### 🚀 Adicionado / Added
- Compatibilidade completa com a folha de estilo base do Adwaita Dark (`@import url("resource:///org/gtk/libgtk/theme/Adwaita/gtk-contained-dark.css");`) em todas as 40 variações de temas GTK 3.
- Proteção explícita para renderização de abas, cabeçalhos, barras de ferramentas e janelas de download em aplicativos de terceiros e navegadores web.

### 🔄 Modificado / Changed
- **Padrão de Aplicativos Legados**: `gtk-theme` (`org.gnome.desktop.interface gtk-theme`) agora mantém o tema padrão **Adwaita**, evitando que temas experimentais ou de shell quebrem apps legados.
- **Isolamento do Libadwaita / GTK 4**: Os seletores de CSS modernos (`:root`, `oklab()`, etc.) agora são direcionados exclusivamente para `~/.config/gtk-4.0/gtk.css`, impedindo poluição e falhas de parser no GTK 3 (`~/.config/gtk-3.0/gtk.css`).
- **Aura Theme Daemon (`aura-theme-daemon`)**: Ajustado para sincronizar em tempo real o **GNOME Shell**, **GTK 4 (Libadwaita)** e cores de destaque (**Accent Color**), sem sobrescrever o tema de aplicativos legados para manter total estabilidade.
- **CLI (`switch-theme`)**: Atualizado para aplicar os estilos do Shell e Libadwaita de forma limpa, mantendo aplicativos legados compatíveis com o padrão do sistema.

### 🐛 Corrigido / Fixed
- **Transparência indesejada em abas e topos de janelas**:
  - **Mozilla Firefox**: Corrigido problema em que a barra de abas e o topo da janela ficavam invisíveis/transparentes.
  - **FileZilla**: Corrigidas abas do gerenciador e painéis de arquivos sem renderização de fundo.
  - **Free Download Manager (FDM)**: Corrigidas caixas de diálogo e notificações de download que ficavam 100% transparentes ao baixar arquivos do Google Chrome / navegadores.
- Erros de parsing no motor CSS do GTK 3 (`Invalid name of pseudo-class`, `'oklab' is not a valid color name`, `Expected ',' in color definition`).

---

## [1.0.0] - 2026-08-16

### 🚀 Lançamento Inicial / Initial Release
- Suíte completa de temas Aura One com 4 estilos de fundo:
  - **OLED Pure Black** (`#0a0b0d` / `#141518`)
  - **Midnight Darker** (`#16181d` / `#1e222a`)
  - **One Dark Classic** (`#282c34` / `#323742`)
  - **Glass Translucent** (Glassmorphism)
- 10 variações de cores de destaque para cada estilo de fundo (40 temas no total).
- CLI interativo `switch-theme` com menu TUI e suporte a códigos HEX customizados.
- Daemon de sincronização em tempo real `aura-theme-daemon` integrado com systemd e autostart.
- Script automatizado de instalação (`install.sh`) e desinstalação (`uninstall.sh`).
