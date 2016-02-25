Dotfiles
===========================

Requires GNU Stow

# Usage
1. Clone into your home directory (so this file is at `~/dotfiles/README.md`)
2. `cd ~/dotfiles`
3. `stow git; stow tmux; stow zsh; stow vim`

This creates symlinks in your home directory to the files in `dotfiles`,
which can remain under VCS. See http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html for details
