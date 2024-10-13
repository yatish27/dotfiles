# My Dotfiles

This repository contains my personal dotfiles. These configurations help set up a development environment quickly and efficiently.

## Repository Structure

- `Brewfile`: List of packages and applications to install via Homebrew
- `git/gitconfig`: Git configuration
- `zsh/zshrc`: ZSH configuration
- `zsh/theme/yatish.zsh-theme`: Custom ZSH theme
- `mac-setup.sh`: Script to set macOS preferences
- `zsh-setup.sh`: Script to set up Zsh, Oh My Zsh, and custom theme
- `vscode-setup.sh`: Script to set up VSCode settings and extensions
- `vscode/settings.json`: VSCode settings
- `vscode/extensions.txt`: List of VSCode extensions to install
- `LICENSE.md`: MIT License for the project

## Installation

Follow these steps to install and set up the dotfiles:

1. Clone this repository:

   ```
   mkdir -p ~/code && cd ~/code && git clone https://github.com/yatish27/dotfiles.git
   ```

2. Install Homebrew (if not already installed):

   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

3. Install essential tools and applications using Brewfile:

   ```
   cd ~/code/dotfiles
   brew bundle
   ```

4. Set up Zsh, Oh My Zsh, and custom theme:

   ```
   ./zsh-setup.sh
   ```

5. Install desired languages and tools with asdf:

   ```
   asdf plugin add nodejs
   asdf install nodejs latest
   asdf global nodejs latest

   asdf plugin add ruby
   asdf install ruby latest
   asdf global ruby latest
   ```

6. Set macOS preferences:

   ```
   ./mac-setup.sh
   ```

7. Set up VSCode:

   Make sure you have the `code` command-line tool installed. If not, open VSCode, press Cmd+Shift+P, and run "Shell Command: Install 'code' command in PATH".

   Then run the VSCode setup script:

   ```
   ./vscode-setup.sh
   ```

   This will copy your settings and install your extensions.

8. Restart your terminal or run `source ~/.zshrc` to apply the changes.

## Customization

Feel free to modify any of the dotfiles to suit your preferences. The main configuration files are:

- Shell Configuration

  - `zsh/zshrc`: ZSH configuration
  - `zsh/theme/yatish.zsh-theme`: Custom ZSH theme

- Git Configuration

  - `git/gitconfig`: Git configuration (remember to update with your name and email)

- Package Management

  - `Brewfile`: List of packages and applications to install via Homebrew

- macOS Settings

  - `mac-setup.sh`: Script to set macOS preferences

- VSCode Configuration
  - `vscode-setup.sh`: Script to set up VSCode settings and extensions
  - `vscode/settings.json`: VSCode settings
  - `vscode/extensions.txt`: List of VSCode extensions to install

## Updating

To update your dotfiles:

1. Pull the latest changes from the repository:

   ```
   cd ~/code/dotfiles
   git pull origin main
   ```

2. Copy the updated configuration files:

   ```
   cp ~/code/dotfiles/zsh/zshrc ~/.zshrc
   cp ~/code/dotfiles/git/gitconfig ~/.gitconfig
   cp ~/code/dotfiles/zsh/theme/yatish.zsh-theme ~/.oh-my-zsh/themes/
   ```

3. If there are changes to the Brewfile, run:

   ```
   brew bundle
   ```

4. If there are changes to VSCode settings or extensions, run:

   ```
   ./vscode-setup.sh
   ```

5. Restart your terminal or run `source ~/.zshrc` to apply the changes.

## Additional Tips

### Git Aliases

To set up a nice `git lg` alias for a prettier log output:

```
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
```

## Contributing

If you have any suggestions or improvements, feel free to open an issue or submit a pull request.

## License

This project is open source and available under the [MIT License](LICENSE).
