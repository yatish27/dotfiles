# Development Environment Setup

This repository contains scripts and configuration files to set up a development environment quickly and consistently.

## Repository Structure

- `cursor-setup.sh`: Script to set up Cursor editor configuration
- `mac-setup.sh`: Script to set macOS preferences
- `git/.gitconfig`: Git configuration
- `gemrc`: Ruby gems configuration

## Installation

Follow these steps to install and set up the environment:

1. Clone this repository:

   ```
   git clone https://github.com/yatish27/dotfiles.git
   cd dotfiles
   ```

2. Configure macOS settings:

   ```
   ./mac-setup.sh
   ```

3. Set up Cursor editor:

   ```
   ./cursor-setup.sh
   ```

## Configuration Details

### Git Configuration

The `.gitconfig` file contains Git aliases and configuration settings. To use it:

```
cp -f $(pwd)/git/.gitconfig ~/.gitconfig
```

Remember to update the gitconfig with your name and email before using.

### Ruby Gems Configuration

The `gemrc` file configures Ruby gems behavior. To use it:

```
cp -f $(pwd)/gemrc ~/.gemrc
```

### RuboCop Configuration

The `rubocop.yml` file contains the configuration for RuboCop, a Ruby static code analyzer. To use it:

```
cp -f $(pwd)/rubocop.yml ~/.rubocop.yml
```

## Updating

To update your configurations:

1. Pull the latest changes:

   ```
   git pull origin main
   ```

2. Re-run any setup scripts that have been updated:

   ```
   ./mac-setup.sh    # if macOS settings changed
   ./cursor-setup.sh # if cursor settings changed
   ```

3. Restart your terminal to apply any shell-related changes.

## Contributing

If you have any suggestions or improvements:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request
