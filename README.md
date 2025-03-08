# HyprTinker 🚀✨

**A customizable, minimal, and powerful Arch + Hyprland setup**

## 🛠️ Overview
HyprTinker is a fully automated, script-based system setup for Arch Linux with Hyprland. Designed for tinkerers who love tweaking their Linux environment, it provides a structured, reusable way to install and configure a personalized Arch system.

## 🎯 Features
- 🚀 **Fully Automated Installation** – Bootstrap your system in minutes.
- 🎨 **Pre-configured Hyprland Environment** – Smooth, minimal, and wayland-native.
- 📦 **Curated Package List** – Essential tools and utilities for productivity.
- ⚙️ **Custom Dotfiles Management** – Keep your configs versioned and reusable.
- 🛡️ **System Services Setup** – Ensures everything works out of the box.

## 📜 Installation
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/HyprTinker.git
   cd HyprTinker
   ```

2. **Run the install script**
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. **Reboot and enjoy your Hyprland-powered Arch setup!**
   ```bash
   reboot
   ```

## 📁 Project Structure
```
HyprTinker/
├── install.sh       # Main installation script
├── packages/
│   ├── pacman.txt  # List of pacman packages
│   ├── aur.txt     # List of AUR packages
├── configs/
│   ├── hyprland/   # Hyprland config files
│   ├── waybar/     # Waybar config
│   ├── alacritty/  # Terminal config
│   ├── nvim/       # Neovim setup
├── README.md       # This file
```

## 📌 Customization
Feel free to tweak the package lists, modify the configurations, or expand the setup to fit your needs.

To update your dotfiles, simply commit changes to the `configs/` directory and push them to your repository.

## 💡 Why HyprTinker?
HyprTinker is built for those who love **control, customization, and minimalism**. Whether you're an experienced Linux user or a curious newcomer, this project aims to make Arch + Hyprland easy and enjoyable to set up.

## 🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to fork, modify, and send pull requests.

## 📜 License
MIT License. See `LICENSE` for details.

✨ Happy tinkering with Hyprland! ✨


