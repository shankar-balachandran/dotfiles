# Dotfiles

My personal dotfiles configuration for macOS.

## Contents

- `.zshrc` - Zsh configuration with Oh My Zsh, aliases, and environment variables

## Setup

### Fresh Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Run the install script:
   ```bash
   ./install.sh
   ```

### Manual Installation

1. Backup your existing dotfiles:
   ```bash
   mv ~/.zshrc ~/.zshrc.backup
   ```

2. Create symlinks:
   ```bash
   ln -sf ~/dotfiles/.zshrc ~/.zshrc
   ```

3. Reload your shell:
   ```bash
   source ~/.zshrc
   ```

## Features

### Aliases
- `ll` - List files in long format, sorted by time
- `lm` - List files with lolcat colors
- `reload` - Reload zsh configuration
- `db` - Connect to development database
- `stsnew` - Open new Spring Tools Suite instance

### Environment Variables
- Java development environment
- PostgreSQL database paths
- Custom scripts directory in PATH
- Tomcat configuration

### Oh My Zsh
- Theme: `cloud`
- Plugins: `git`, `postgres`

## Customization

Feel free to modify the configurations to suit your needs. The main areas you might want to customize:

- **Aliases**: Add your frequently used commands
- **Environment Variables**: Set paths for your development tools
- **Oh My Zsh Theme**: Change the `ZSH_THEME` variable
- **Plugins**: Add more Oh My Zsh plugins to the `plugins` array

## Backup

To backup your current configuration:
```bash
cp ~/.zshrc ~/dotfiles/.zshrc
cd ~/dotfiles
git add .
git commit -m "Update zshrc configuration"
git push
```

## Requirements

- macOS
- [Oh My Zsh](https://ohmyz.sh/)
- [Homebrew](https://brew.sh/) (recommended)

## License

This is free and unencumbered software released into the public domain.
