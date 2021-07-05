#! /usr/bin/env bash
# Remove symlinks to dotfiles in home directory

remove_symlinks() {
  files="zshrc vimrc tmux.conf gitconfig gitignore.global aliases"
  for file in $files; do
    rm -rf ~/.$file
  done

  rm -rf ~/.oh-my-zsh/ || echo
  rm -rf ~/.vim || echo
}

remove_symlinks
