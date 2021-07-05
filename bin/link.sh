#!/usr/bin/env bash
# Link dotfiles -> ~
c_symlinks() {
  files="zshrc vimrc tmux.conf gitconfig gitignore.global aliases"
  for file in $files; do
    echo "Creating symlink to $file in home directory."
    ln -sf ~/dotfiles/dotfiles/$file ~/.$file
  done

  ln -sf ~/dotfiles/themes/looneym.zsh-theme ~/.oh-my-zsh/themes/zsh-theme
}
c_symlinks
