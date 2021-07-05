# Get Ready
cd ~
calling_user=`who | awk '{print $1}'`
echo 'Running as' `whoami`
#sudo apt update -y && sudo apt update -y && sudo apt dist-upgrade -y

# VBOX?
#sudo ./VBoxLinuxAdditions.run 
#sudo apt install gcc make perl
#sudo ./VBoxLinuxAdditions.run

# Install apt packages
sudo apt -y install wget ripgrep httpie htop vim python3 python3-pip python3-venv tmux git netcat socat nmap xxd unzip tree zsh

# Install python libs
sudo pip3 install -U requests flask flask-wtf hashcrack lxml paramiko

# Run the rest as the caller
sudo -i -u $calling_user bash << EOF

echo 'Running as' `whoami`

gnome-terminal --window-with-profile=bash -- \
    bash -c "/home/"$calling_user"/dotfiles/install_zsh.sh"

EOF

# Install fonts
git clone https://github.com/powerline/fonts.git \
&& cd fonts/ \
&& rm -rf \
&& rm -rf 'Meslo *' \
&& rm -rf D2Coding \
&& rm -rf DroidSansMono \
&& rm -rf SymbolNeu \
&& rm -rf Cousine \
&& rm -rf LiberationMono \
&& rm -rf SourceCodePro \
&& rm -rf NovaMono \
&& rm -rf FiraMono \
&& rm -rf Monofur \
&& rm -rf ProFont \
&& rm -rf Droid* \
&& rm -rf 3270 \
&& rm -rf install.ps1 \
&& rm -rf InputMono \
&& rm -rf Meslo\ Dotted \
&& rm -rf Meslo\ Slashed/ \
&& rm -rf Terminus \
&& rm -rf Hack \
&& rm -rf AnonymousPro \
&& ./install.sh \
&& echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699" \
&& cd .. \
&& rm -rf fonts/

sudo -i -u $calling_user bash << EOF
# Move .dotfiles
cp ~/dotfiles/gitconfig ~/.gitconfig
cp ~/dotfiles/gitignore.global ~/.gitignore.global
cp ~/dotfiles/selected_editor ~/.selected_editor
cp ~/dotfiles/vimrc ~/.vimrc
cp -r ~/dotfiles/vim ~/.vim

cp ~/dotfiles/tmux.conf ~/.tmux.conf

cp ~/dotfiles/gitconfig ~/.gitconfig

# Backup & 
# Bash
#mv ~/.bash_history ~/.bash_history.bak
#mv .bash_history ~/.bash_history
#mv ~/.bashrc ~/.bashrc.bak
#mv .bashrc ~/.bashrc

# z - This might not be needed
#cp .z ~/.z
#cp .zcompdump ~/.zcompdump

# zsh
cp ~/dotfiles/zshrc ~/.zshrc

cp ~/dotfiles/custom/aliases.zsh $ZSH_CUSTOM/aliases.zsh
cp -r ~/dotfiles/custom/plugins/k $ZSH_CUSTOM/plugins/k

# Install zsh plugins
# already exists there but in case of update.
#git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

# manual oh-my-zsh update
#omz update

EOF
echo 'Done --'
