🚀 Sultan's Termux Setup Guide

Welcome to your personalized Termux environment! This guide will help you set up and navigate your custom terminal in just a few steps.

---

🛠️ Step 1: Prepare the Script

Create a file named termux-setup.sh and paste the following code inside it:

`bash

!/data/data/com.termux/files/usr/bin/bash

Update & Upgrade
pkg update && pkg upgrade -y

Essential Packages
pkg install -y git curl wget nano vim python zip unzip \
figlet toilet ruby neofetch zsh tree termux-api

Lolcat for colorful output
gem install lolcat

Storage permission
termux-setup-storage

Custom directory
MAINDIR="---sultanonoooxoo_termux---"
mkdir -p ~/$MAIN_DIR/{Scripts,Notes,Tools,Web,Python,Backups,Projects}

Directory script
cat << 'EOF' > ~/$MAIN_DIR/Scripts/dir-color.sh

!/data/data/com.termux/files/usr/bin/bash
echo -e "\e[1;35m╭───────────────────────────────────────╮"
echo -e "│  \e[1;36m🏠 \e[1;33mHOME DIRECTORY: \e[1;32m$MAIN_DIR \e[1;35m│"
echo -e "╰───────────────────────────────────────╯\e[0m"
ls --color=auto
EOF
chmod +x ~/$MAIN_DIR/Scripts/dir-color.sh

Zsh setup
cat << EOF > ~/.zshrc
export MAINDIR="$MAINDIR"
export PATH=\$PATH:~/\$MAIN_DIR/Scripts

PROMPT='%F{blue}╭─%F{green}[%F{cyan}Termux%F{green}]%F{blue}──%F{yellow}[%F{magenta}%~%F{yellow}]%F{blue}
╰─%F{red}➤%F{white} '

cd ~/\$MAIN_DIR
clear
toilet -f big -F gay "onoooxoo" | lolcat
echo -e "\e[1;32mWelcome to Sultan's Termux\n\e[1;33mDeveloper's Forge: Precision | Poetry | Code\n\e[1;36mMain Directory: ~/\$MAIN_DIR\e[0m" | lolcat
echo -e "\e[1;35mType 'menu' for custom commands\e[0m"

alias home="cd ~/\$MAINDIR && ~/\$MAINDIR/Scripts/dir-color.sh"
alias ls="ls --color=auto"

function menu() {
    echo -e "\e[1;33m╔══════════════════════════════════════╗"
    echo -e "║          \e[1;36mSULTAN'S TERMUX MENU\e[1;33m         ║"
    echo -e "╠══════════════════════════════════════╣"
    echo -e "║ \e[1;32mhome\e[0m    - Return to main directory    ║"
    echo -e "║ \e[1;32mmenu\e[0m    - Show this help menu        ║"
    echo -e "║ \e[1;32mupdate\e[0m - Update packages             ║"
    echo -e "║ \e[1;32mweb\e[0m     - Go to Web projects         ║"
    echo -e "║ \e[1;32mpy\e[0m      - Go to Python projects      ║"
    echo -e "║ \e[1;32mtools\e[0m   - Go to Tools directory      ║"
    echo -e "╚══════════════════════════════════════╝\e[0m"
}

function web() { cd ~/\$MAINDIR/Web && ~/\$MAINDIR/Scripts/dir-color.sh }
function py() { cd ~/\$MAINDIR/Python && ~/\$MAINDIR/Scripts/dir-color.sh }
function tools() { cd ~/\$MAINDIR/Tools && ~/\$MAINDIR/Scripts/dir-color.sh }
function update() { pkg update && pkg upgrade -y }

~/$MAIN_DIR/Scripts/dir-color.sh
neofetch
EOF

cp ~/.zshrc ~/.bashrc

Welcome markdown
cat << 'EOF' > ~/$MAIN_DIR/Notes/Welcome.md

Welcome to Sultan's Termux Environment

Directory Structure
- 📁 Scripts — Custom shell scripts
- 📁 Web — Your web development projects
- 📁 Python — Python automation & tools
- 📁 Tools — External packages & scripts
- 📁 Projects — Miscellaneous experiments
- 📁 Notes — Your documentation & markdown
- 📁 Backups — Important saves

Usage Tips
1. Type menu to view available options
2. Type home to return to your custom root
3. Use web, py, or tools to quickly navigate

> "The best of houses is the house where an orphan gets love and kindness."  
> — Prophet Muhammad (ﷺ)
EOF

echo -e "\e[1;32mSetup complete!\e[0m"
echo -e "\e[1;36mRestart Termux or type 'zsh' to activate your custom environment.\e[0m"
`

---

⚙️ Step 2: Run the Script

1. Save the content above in a file named termux-setup.sh
2. In Termux, navigate to where it’s saved, then run:

`bash
chmod +x termux-setup.sh
./termux-setup.sh
`

---

🌟 Final Step: Enjoy Your Custom Terminal

- When setup completes, your terminal will show:
  - 🎨 colorful banners
  - 🛠️ shortcuts (home, menu, web, py, tools)
  - 📁 organized folders just for you

Every time you open Termux, you’ll enter your developer hub, styled with Sultan's flavor.

---
