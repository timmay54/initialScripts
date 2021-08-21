# TODO: 

# create the update alias
echo "alias update='sudo apt update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt autoremove && sudo apt clean'" >> ~/.bashrc

# install preffered packages
sudo apt install -y cmatrix tty-clock neofetch htop wget google-chrome-stable kodi apt-transport-https ca-certificates curl software-properties-common
sudo apt install kodi-vfs-sftp kodi-vfs-rar -y

#install docker & docker-compose 
echo "Installing docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
sudo systemctl status docker
echo "Installing docker-compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose
docker --version
docker-compose --version

#install newest kodi?
