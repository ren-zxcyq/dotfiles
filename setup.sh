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
sudo -s apt -y install konsole wget ripgrep httpie htop vim python3 python3-pip python3-venv tmux git netcat socat nmap xxd unzip tree zsh

# Install python libs
sudo -s pip3 install -U requests flask flask-wtf hashcrack lxml paramiko

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

# Run the rest as the caller
#sudo -i -u $calling_user bash << EOF

#├── konsole
#│   ├── kama.profile
#│   └── mydarkpastel.colorscheme
#├── konsolerc
mkdir /home/"$calling_user"/.config
#cp -r /home/"$calling_user"/dotfiles/konsole /home/"$calling_user"/.config/konsole/
cp /home/"$calling_user"/dotfiles/konsolerc /home/"$calling_user"/.config/konsolerc
cp /home/"$calling_user"/dotfiles/konsole/kama.profile /home/"$calling_user"/.local/share/konsole/kama.profile
cp /home/"$calling_user"/dotfiles/konsole/mydarkpastel.colorscheme /home/share/konsole/mydarkpastel.colorscheme

#Fix for - QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp
#export XDG_RUNTIME_DIR=/tmp/xdg_runtime_dir
#export RUNLEVEL=3

#Unattended install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#konsole -e bash -c "/home/"$calling_user"/dotfiles/move_dotfiles.sh"

# Move .dotfiles
cp ~/dotfiles/gitconfig ~/.gitconfig
cp ~/dotfiles/gitignore.global ~/.gitignore.global
cp ~/dotfiles/selected_editor ~/.selected_editor
cp ~/dotfiles/vimrc ~/.vimrc
cp -r ~/dotfiles/vim ~/.vim
cp ~/dotfiles/tmux.conf ~/.tmux.conf

# Copy zsh settings
cp ~/dotfiles/zshrc ~/.zshrc
# Copy aliases.zsh to $ZSH_CUSTOM/aliases.zsh
cp ~/dotfiles/custom/aliases.zsh .oh-my-zsh/custom/aliases.zsh
#cp -r ~/dotfiles/custom/plugins/k $ZSH_CUSTOM/plugins/k
# k - already exists under custom/plugins/ but in case of update:
# Clone k into #$ZSH_CUSTOM/plugins/k
git clone https://github.com/supercrabtree/k .oh-my-zsh/custom/plugins/k
rm -rf .oh-my-zsh/custom/plugins/k/.git/

# manual oh-my-zsh update
#omz update


# Make zsh your default shell
sudo -u `whoami` -ns chsh -s `which zsh` `whoami`

#EOF

echo 'Done --'
