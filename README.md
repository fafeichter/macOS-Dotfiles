# macOS-Dotfiles

My personal macOS dotfiles.

## 🚀 Quick Setup (New Machine)

1. **Clone the repository:**
   ```bash
   git clone git@github.com:fafeichter/macOS-Dotfiles.git ~/.dotfiles
   cd ~/.dotfiles
   ```

2. **Make scripts executable:**
   ```bash
   chmod +x create_symlinks.zsh brew_install_formulae.zsh
   ```

3. **Create Symlinks:**
   Run the symlink script to link your configurations (`.zshrc`, `.gitconfig`, Gradle properties, etc.) to your home
   directory:
   ```bash
   ./create_symlinks.zsh
   ```

4. **Install Homebrew Formulae:**
   Run the Homebrew installation script which automatically processes all modular `Brewfile`s across the repository:
   ```bash
   ./brew_install_formulae.zsh
   ```

5. **Restart your terminal:**
   ```bash
   exec zsh
   ```