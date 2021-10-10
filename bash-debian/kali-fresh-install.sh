# TODO: 

# create the update alias
echo "alias update='sudo apt update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt autoremove && sudo apt clean'" >> ~/.bashrc

# install preffered packages
sudo apt install -y cmatrix tty-clock neofetch htop wget curl google-chrome-stable kodi apt-transport-https ca-certificates curl software-properties-common
sudo apt install kodi-vfs-sftp kodi-vfs-rar -y

# Install Lazy Script
