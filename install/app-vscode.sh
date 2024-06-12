<<<<<<< HEAD
cd /tmp
wget -O code.deb 'https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64'
=======
cd ~/Downloads
if [[ "$ARCH" == "amd64" ]]; then
  VSCODE_ARCH="x64"
else
  VSCODE_ARCH="$ARCH"  
fi

wget -O code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-${VSCODE_ARCH}"
>>>>>>> 039845249e39d66fd8d16e1e7cbe7fc06ec3ca0c
sudo apt install -y ./code.deb

rm code.deb
cd -

mkdir -p ~/.config/Code/User
cp ~/.local/share/omakub/configs/vscode.json ~/.config/Code/User/settings.json

# Install default supported themes
code --install-extension enkia.tokyo-night

# Install default language extensions
code --install-extension golang.go