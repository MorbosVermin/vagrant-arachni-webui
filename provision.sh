#!/usr/bin/env bash

sudo emerge --sync

mkdir $HOME/Downloads
cd $HOME/Downloads
echo -n "Downloading Arachni v1.4, please wait..."
wget -q https://github.com/Arachni/arachni/releases/download/v1.4/arachni-1.4-0.5.10-linux-i686.tar.gz
echo "done."

echo -n "Extracting Arachni v1.4, please wait..."
tar axf arachni-1.4-0.5.10-linux-i686.tar.gz
echo "done."

sudo cp /vagrant/arachni.st* /etc/local.d/
sudo chmod +x /etc/local.d/arachni.st*
sudo /etc/local.d/arachni.start

figlet "ARACHNI" > $HOME/.motd
echo "Build time: `date`" >> $HOME/.motd
echo >> $HOME/.motd
echo "Visit http://localhost:8080 in your host's browser to use Arachni." >> $HOME/.motd
echo "Username: admin@admin.admin, Password: administrator" >> $HOME/.motd
echo "Or, use arachni CLI from $HOME/Downloads/arachni-1.4-0.5.10." >> $HOME/.motd
sudo mv /home/vagrant/.motd /etc/motd

echo
echo "Provisioning complete."
echo
echo "Open a web browser and go to http://localhost:8080 to use Arachni."
echo "Username: admin@admin.admin"
echo "Password: administrator"
echo
