echo "________________________________"
echo
echo "        Need root access        "
echo "________________________________"

if [ ! -d ~/.iconsP ]; then
  sudo mkdir ~/.iconsP
fi

echo
echo "    Needed folders... Done. "
echo "________________________________"


sudo cp -R ElGeneral ~/.iconsP
sudo cp -R Yosemite-GTK ~/.iconsP


echo
echo "   New files have been created. "
echo "________________________________"
echo
echo "      Adding repositories. "
echo "________________________________"



sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo wget https://atom.io/download/deb


# GITHUB PART: If some repositories are needed, in this section we'll add it.
git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
bash /tmp/elementary-dropbox/install.sh


sudo apt update

# gdebi makes everything simpler because it resolves the dependencies.
sudo apt install gdebi

sudo gdebi google-chrome-stable_current_amd64.deb
sudo gdebi atom-amd64.deb

sudo rm google-chrome-stable_current_amd64.deb
sudo rm atom-amd64.deb
