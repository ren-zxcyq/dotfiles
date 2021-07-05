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
sudo apt -y install konsole wget ripgrep httpie htop vim python3 python3-pip python3-venv tmux git netcat socat nmap xxd unzip tree zsh

# Install python libs
sudo pip3 install -U requests flask flask-wtf hashcrack lxml paramiko

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
sudo -i -u $calling_user bash << EOF

echo 'Running as' `whoami`

#├── konsole
#│   ├── kama.profile
#│   └── mydarkpastel.colorscheme
#├── konsolerc
mkdir /home/"$calling_user"/.config
mv /home/"$calling_user"/dotfiles/konsole /home/"$calling_user"/.config/konsole/
mv /home/"$calling_user"/dotfiles/konsolerc /home/"$calling_user"/.config/konsolerc

export XDG_RUNTIME_DIR=/tmp/xdg_runtime_dir
export RUNLEVEL=3

#Unattended install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended \
konsole -e bash -c "/home/"$calling_user"/dotfiles/move_dotfiles.sh"
# Make zsh your default shell
chsh -s $(which zsh)

EOF

echo 'Done --'
