apt-get install -y direnv thefuck subversion git apt-get transmission-daemon

git clone https://github.com/grburgess/dotfiles

systemctl stop transmission-daemon

#dpkg -i expressvpn_3.2.1.2-1_armhf.deb
# go here: https://www.youtube.com/watch?v=FuNCu7_uYP8
# https://www.raspberrypi.org/documentation/configuration/external-storage.md

sudo mkdir /mnt/media
# here: https://linuxconfig.org/how-to-set-up-transmission-daemon-on-a-raspberry-pi-and-control-it-via-web-interface

# https://askubuntu.com/questions/221081/permission-denied-when-downloading-with-transmission-daemon
# https://forums.plex.tv/t/plex-media-permissions-for-raspberry-pi/451456/2

sudo usermod -a -G debian-transmission pi
sudo chgrp debian-transmission /mnt/media/torrent-complete
sudo chgrp debian-transmission /mnt/media/torrent-inprogress
sudo chmod 770 /mnt/media/torrent-inprogress
sudo chmod 770 /mnt/media/torrent-complete
sudo cp settings.json /etc/transmission-daemon/settings.json

sudo apt-get install apt-transport-https

curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add -

echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list


sudo apt-get update
sudo apt install python3 -y
sudo apt-get install python3-pip -y

sudo apt install plexmediaserver -y

sudo usermod -a -G debian-transmission plex
sudo sudo chmod 775 /mnt/media/ -R
sudo sudo chmod 775 /mnt/media/torrent-complete -R


# https://www.htpcguides.com/install-sickrage-raspberry-pi-usenet-torrent-tv/

sudo apt-get install python-pip python-dev git libssl-dev libxslt1-dev libxslt1.1 libxml2-dev libxml2 libssl-dev libffi-dev build-essential -y


sudo pip3 install pyopenssl

wget http://sourceforge.net/projects/bananapi/files/unrar_5.2.6-1_armhf.deb

sudo dpkg -i unrar_5.2.6-1_armhf.deb

sudo git clone https://github.com/SickChill/SickChill.git /opt/sickchill

sudo cp sickchill /etc/default/ 

sudo chown -R pi:pi /opt/sickchill


sudo chmod +x /etc/init.d/sickchill

sudo cp /opt/sickchill/contrib/runscripts/init.ubuntu /etc/init.d/sickchill

git clone https://github.com/ckardaris/tormix


cd tormix
./install
cd ../

