# Get Ready
cd ~
#sudo apt update -y && sudo apt update -y && sudo apt dist-upgrade -y

# VBOX?
#sudo ./VBoxLinuxAdditions.run 
#sudo apt install gcc make perl
#sudo ./VBoxLinuxAdditions.run

# Install apt packages
sudo apt -y install wget ripgrep httpie htop vim python3 python3-pip python3-venv tmux git netcat socat nmap xxd unzip tree zsh

# Install python libs
pip3 install -U requests flask flask-wtf hashcrack lxml paramiko

# Install oh-my-zsh
# Install
#sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#Unattended install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended \
# Make zsh your default shell
&& sudo chsh -s $(which zsh)

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


# Move .dotfiles
cp ~/dotfiles-auto_build-zsh/gitconfig ~/.gitconfig
cp ~/dotfiles-auto_build-zsh/gitignore.global ~/.gitignore.global
cp ~/dotfiles-auto_build-zsh/selected_editor ~/.selected_editor
cp ~/dotfiles-auto_build-zsh/vimrc ~/.vimrc
cp -r ~/dotfiles-auto_build-zsh/vim ~/.vim

cp ~/dotfiles-auto_build-zsh/tmux.conf ~/tmux.conf

cp ./gitconfig ~/gitconfig

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
cp ~/dotfiles-auto_build-zsh/zshrc ~/.zshrc

cp ~/dotfiles-auto_build-zsh/custom/aliases.zsh $ZSH_CUSTOM/aliases.zsh
cp -r ~/dotfiles-auto_build-zsh/custom/plugins/k $ZSH_CUSTOM/plugins/k

# Install zsh plugins
# already exists there but in case of update.
#git clone https://github.com/supercrabtree/k $ZSH_CUSTOM/plugins/k

# manual oh-my-zsh update
#omz update
echo 'Done --'
