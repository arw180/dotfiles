Dotfiles
===========================

Requires GNU Stow

# Usage
1. Clone into your home directory (~/dotfiles)
2. `cd ~/dotfiles`
3. `stow bash; stow git; stow tmux; stow zsh; stow vim`

This creates symlinks in your home directory to the files in `dotfiles`,
which can remain under VCS
