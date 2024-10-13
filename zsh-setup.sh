#!/bin/bash

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "Oh My Zsh is already installed."
fi

# Copy zshrc file
echo "Copying zshrc file..."
cp ~/code/dotfiles/zsh/zshrc ~/.zshrc

# Copy custom theme
echo "Copying custom theme..."
cp ~/code/dotfiles/zsh/theme/yatish.zsh-theme ~/.oh-my-zsh/themes/

# Set ZSH_THEME in .zshrc
echo "Setting custom theme in .zshrc..."
sed -i '' 's/ZSH_THEME=".*"/ZSH_THEME="yatish"/' ~/.zshrc

# Set up asdf
echo "Setting up asdf..."
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ~/.zshrc

echo "Zsh setup complete. Please restart your terminal or run 'source ~/.zshrc' to apply changes."
