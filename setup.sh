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

gnome-terminal --window-with-profile=bash -- \
    bash -c "/home/"$calling_user"/dotfiles/move_dotfiles.sh"

EOF

echo 'Done --'
