# Move .dotfiles
cp ~/dotfiles/gitconfig ~/.gitconfig
cp ~/dotfiles/gitignore.global ~/.gitignore.global

cp ~/dotfiles/selected_editor ~/.selected_editor
cp ~/dotfiles/vimrc ~/.vimrc
cp -r ~/dotfiles/vim ~/.vim

cp ~/dotfiles/tmux.conf ~/.tmux.conf

# Backup & Bash
#mv ~/.bash_history ~/.bash_history.bak
#mv .bash_history ~/.bash_history
#mv ~/.bashrc ~/.bashrc.bak
#mv .bashrc ~/.bashrc

# z - This might not be needed
#cp .z ~/.z
#cp .zcompdump ~/.zcompdump

# Copy zsh settings
cp ~/dotfiles/zshrc ~/.zshrc
cp ~/dotfiles/custom/aliases.zsh $ZSH_CUSTOM/aliases.zsh
cp -r ~/dotfiles/custom/plugins/k $ZSH_CUSTOM/plugins/k
# k - already exists under custom/plugins/ but in case of update:
#git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

# manual oh-my-zsh update
#omz update
