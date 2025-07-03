#!/bin/bash

# Backup script to sync current dotfiles to repository

echo "🔄 Syncing dotfiles..."

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Copy current dotfiles to repository
echo "📋 Copying current .zshrc..."
cp "$HOME/.zshrc" "$DOTFILES_DIR/.zshrc"

# Check if there are any changes
cd "$DOTFILES_DIR"
if git diff --quiet; then
    echo "✅ No changes detected. Dotfiles are up to date!"
    exit 0
fi

# Show what changed
echo "📝 Changes detected:"
git diff --name-only

# Add and commit changes
git add .
echo ""
read -p "Enter commit message (or press Enter for default): " commit_msg

if [ -z "$commit_msg" ]; then
    commit_msg="Update dotfiles configuration - $(date '+%Y-%m-%d %H:%M')"
fi

git commit -m "$commit_msg"

# Push to GitHub
echo "🚀 Pushing to GitHub..."
git push

echo "✅ Dotfiles backup complete!"
echo "🌐 Repository: https://github.com/shankar-balachandran/dotfiles"
