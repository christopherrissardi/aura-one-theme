<div align="center">

# 🌌 Aura One Theme Suite for GNOME

**A modern, premium, and unified theme suite for GNOME Shell, Libadwaita (GTK4), GTK3, and GTK2.**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GNOME: 42-48](https://img.shields.io/badge/GNOME-42%20--%2048-blue.svg)](https://www.gnome.org/)
[![GTK4 / Libadwaita](https://img.shields.io/badge/GTK4-Libadwaita-purple.svg)](https://gitlab.gnome.org/GNOME/libadwaita)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](https://github.com/christopherrissardi)

[English 🇺🇸](#-english) • [Português 🇧🇷](#-português)

---

</div>

<a name="-english"></a>
## 🇺🇸 English

### ✨ Overview

**Aura One** is a state-of-the-art dark theme suite designed specifically for modern Linux desktop environments running GNOME 42+. It bridges the gap between **GNOME Shell**, **Libadwaita / GTK4 apps (Nautilus, GNOME Settings, Text Editor)**, **GTK3 apps (GIMP, Inkscape, VLC, LibreOffice)**, and **GTK2 legacy apps (Wine, legacy dialogs)**, ensuring a 100% consistent and visually harmonious experience across your entire system.

### 🌟 Key Highlights

* 🌑 **OLED Pure Black Edition**: Pitch-black surfaces (`#0a0b0d` / `#141518`) optimized for OLED/AMOLED displays and razor-sharp contrast.
* 🌌 **Midnight Darker Edition**: Deep slate midnight palette (`#16181d` / `#1e222a`), ~50% darker than standard themes.
* 🌘 **One Dark Original Edition**: Classic balanced slate One Dark background (`#282c34` / `#323742`).
* 🪟 **Refined Glassmorphism Edition**: Translucent glass theme with balanced opacity (80% ~ 88%) designed to pair seamlessly with *Blur My Shell*.
* ⚡ **Instant Real-Time Synchronization (<20ms)**: Comes with a lightweight background daemon (`aura-theme-daemon`) with **0% CPU usage** that automatically propagates changes in GNOME Tweaks or GNOME Settings directly to Nautilus and all open GTK applications instantly.
* 🎨 **36 Ready-to-Use Color Variations**: Pre-built packages for 8 accent colors (Purple, Green, Blue, Orange, Red, Teal, Yellow, Pink) plus an Adaptive dynamic mode.
* 💻 **Powerful CLI Tool (`switch-theme`)**: Change themes and accent colors on the fly from your terminal or open an interactive TUI menu with live hex color preview!

---

### 🎨 Theme Variations Matrix

| Background Style | Adaptive (GNOME) | 🟣 Purple | 🟢 Green | 🔵 Blue | 🟠 Orange | 🔴 Red | 🌊 Teal | 🟡 Yellow | 🌸 Pink |
|---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| **OLED Pure Black** | `Aura-One-OLED` | `...-Purple` | `...-Green` | `...-Blue` | `...-Orange` | `...-Red` | `...-Teal` | `...-Yellow` | `...-Pink` |
| **Midnight Darker** | `Aura-One-Darker` | `...-Purple` | `...-Green` | `...-Blue` | `...-Orange` | `...-Red` | `...-Teal` | `...-Yellow` | `...-Pink` |
| **One Dark Classic**| `Aura-One-Dark` | `...-Purple` | `...-Green` | `...-Blue` | `...-Orange` | `...-Red` | `...-Teal` | `...-Yellow` | `...-Pink` |
| **Glass Translucent**| `Aura-One-Transparent` | `...-Purple` | `...-Green` | `...-Blue` | `...-Orange` | `...-Red` | `...-Teal` | `...-Yellow` | `...-Pink` |

---

### 🚀 Quick Installation

Clone the repository and run the automated installer:

```bash
git clone https://github.com/christopherrissardi/aura-one-theme.git
cd aura-one-theme
chmod +x install.sh
./install.sh
```

---

### 🎮 Usage & Customization

#### 1. Via Terminal CLI (`switch-theme`)
The installer installs `switch-theme` directly to your `~/.local/bin/`. You can use it anywhere:

```bash
# Interactive TUI Menu
switch-theme

# Direct Commands
switch-theme oled purple          # OLED Pure Black + Purple
switch-theme oled green           # OLED Pure Black + Emerald Green
switch-theme transparent amber    # Glass Translucent + Amber
switch-theme darker #ff007f       # Darker + Any Custom HEX Color
switch-theme original blue        # Classic One Dark + Sapphire Blue
```

#### 2. Via GNOME Tweaks (Ajustes)
1. Open **GNOME Tweaks** -> **Appearance**.
2. Select your desired theme under **Shell** and **Legacy Applications** (e.g. `Aura-One-OLED-Purple`).
3. The background daemon will automatically sync Nautilus, Settings, and all GTK apps in real time!

#### 3. Via GNOME Settings (Configurações)
When using the adaptive base versions (`Aura-One-OLED`, `Aura-One-Darker`, etc.), opening **GNOME Settings** -> **Appearance** and clicking any accent color will recolor the Shell, Nautilus, and all apps simultaneously.

---

### 🗑️ Uninstallation

To completely remove the theme suite and restore stock GNOME defaults:

```bash
cd aura-one-theme
chmod +x uninstall.sh
./uninstall.sh
```

---

<a name="-português"></a>
## 🇧🇷 Português

### ✨ Visão Geral

O **Aura One** é uma suite de temas escuros moderna e unificada desenvolvida para o ecossistema GNOME 42+. Ele resolve a fragmentação visual do Linux unificando o **GNOME Shell**, **aplicativos Libadwaita / GTK4 (Nautilus, Configurações, Editor de Texto)**, **aplicativos legados GTK3 (GIMP, Inkscape, VLC, LibreOffice)** e **GTK2 (Wine e diálogos antigos)** em uma única linguagem visual consistente e elegante.

### 🌟 Principais Recursos

* 🌑 **Modo OLED Pure Black**: Fundo preto puro (`#0a0b0d` / `#141518`) desenvolvido para painéis OLED e alto contraste.
* 🌌 **Modo Midnight Darker**: Tom ardósia profundo (`#16181d` / `#1e222a`), ~50% mais escuro que os temas convencionais.
* 🌘 **Modo One Dark Original**: Visual clássico One Dark balanceado (`#282c34` / `#323742`).
* 🪟 **Modo Glass Translúcido**: Efeito vidro fumê refinado (80% ~ 88% de opacidade) com desfoque (*blur*) suave para uso com a extensão *Blur My Shell*.
* ⚡ **Sincronização Instantânea (<20ms)**: Inclui um daemon leve em segundo plano (`aura-theme-daemon`) com **0% de uso de CPU** que sincroniza alterações do GNOME Tweaks e Configurações diretamente com o Nautilus e todos os apps abertos no mesmo instante.
* 🎨 **36 Variações de Cores Prontas**: Pacotes pré-configurados com 8 cores de destaque (Roxo, Verde, Azul, Laranja, Vermelho, Ciano, Âmbar, Rosa) e modo Dinâmico GNOME.
* 💻 **Ferramenta CLI Completa (`switch-theme`)**: Alterne temas e cores pelo terminal com facilidade ou abra o menu interativo com suporte a qualquer código HEX!

---

### 🚀 Instalação Rápida

Clone o repositório e execute o instalador:

```bash
git clone https://github.com/christopherrissardi/aura-one-theme.git
cd aura-one-theme
chmod +x install.sh
./install.sh
```

---

### 🎮 Como Usar

#### 1. Pelo Terminal (`switch-theme`)
```bash
# Menu interativo
switch-theme

# Comandos diretos
switch-theme oled purple          # Fundo OLED + Roxo
switch-theme oled green           # Fundo OLED + Verde Esmeralda
switch-theme transparent amber    # Fundo Translúcido + Âmbar
switch-theme darker #ff007f       # Fundo Darker + Cor HEX customizada
```

#### 2. Pelo GNOME Tweaks (Ajustes)
Abra o **Ajustes** -> **Aparência** -> selecione qualquer uma das variações (ex: `Aura-One-OLED-Green`). O Nautilus e todos os programas mudarão de cor na mesma hora.

---

## 👤 Autor & Créditos / Author & Credits

Criado e mantido com carinho por **Christopher Rissardi**.

* 🌐 **GitHub**: [@christopherrissardi](https://github.com/christopherrissardi)
* 🐙 **Repositório**: [https://github.com/christopherrissardi/aura-one-theme](https://github.com/christopherrissardi/aura-one-theme)

---

## 📄 Licença / License

Distribuído sob a licença de software livre **MIT License**. Você tem total liberdade para usar, modificar, redistribuir, alterar cores e criar novos derivados do tema conforme desejar. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
