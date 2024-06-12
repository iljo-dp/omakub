<<<<<<< HEAD
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
cd -
=======
cd ~/Downloads
if [[ $ARCH == "amd64" ]]; then
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install -y ./google-chrome-stable_current_amd64.deb
  rm google-chrome-stable_current_amd64.deb
elif [[ $ARCH == "arm64" ]]; then
  sudo apt install chromium-browser -y
fi
cd -
>>>>>>> 039845249e39d66fd8d16e1e7cbe7fc06ec3ca0c
