#!/bin/bash

# Dotfiles installation script

echo "🏠 Setting up dotfiles..."

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Function to create symlink with backup
create_symlink() {
    local source="$1"
    local target="$2"
    
    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "📦 Backing up existing $target to ${target}.backup"
        mv "$target" "${target}.backup"
    fi
    
    echo "🔗 Creating symlink: $target -> $source"
    ln -sf "$source" "$target"
}

# Create symlinks for dotfiles
create_symlink "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"

# Create scripts directory if it doesn't exist
if [ ! -d "$HOME/scripts" ]; then
    echo "📁 Creating scripts directory..."
    mkdir -p "$HOME/scripts"
fi

echo "✅ Dotfiles installation complete!"
echo ""
echo "Next steps:"
echo "1. Restart your terminal or run: source ~/.zshrc"
echo "2. Install Oh My Zsh if you haven't already: https://ohmyz.sh/"
echo "3. Customize your configuration as needed"
echo ""
echo "Your original files have been backed up with .backup extension"
