#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python3-pip wine nautilus-dropbox docker docker-compose git build-essential libssl-dev flatpak gnome-software-plugin-flatpak winff -y &&


## Adicionando repositório Flathub ##

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && 

## Instalando Apps do Flathub ##

flatpak install flathub cc.arduino.arduinoide -y &&
flatpak install flathub com.google.AndroidStudio -y &&
flatpak install flathub org.audacityteam.Audacity -y &&
flatpak install flathub com.rafaelmardojai.Blanket -y &&
flatpak install flathub org.blender.Blender -y &&
flatpak install flathub org.gnome.Boxes -y &&
flatpak install flathub org.gnome.Cheese -y &&
flatpak install flathub org.mozilla.Thunderbird -y &&
flatpak install flathub com.discordapp.Discord -y &&
flatpak install flathub org.electrum.electrum -y &&
flatpak install flathub org.filezillaproject.Filezilla -y &&
flatpak install flathub com.github.johnfactotum.Foliate -y &&
flatpak install flathub com.meetfranz.Franz -y &&
flatpak install flathub com.axosoft.GitKraken -y &&
flatpak install flathub org.inkscape.Inkscape -y &&
flatpak install flathub org.jamovi.jamovi -y &&
flatpak install flathub org.darktable.Darktable -y &&
flatpak install flathub org.kde.kdenlive -y &&
flatpak install flathub org.kde.krita -y &&
flatpak install flathub net.codeindustry.MasterPDFEditor -y &&
flatpak install flathub org.apache.netbeans -y &&
flatpak install flathub com.obsproject.Studio -y &&
flatpak install flathub org.onlyoffice.desktopeditors -y &&
flatpak install flathub org.librehunt.Organizer -y &&
flatpak install flathub ch.openboard.OpenBoard -y &&
flatpak install flathub org.gimp.GIMP -y &&
flatpak install flathub com.jetbrains.Pycharm-Community -y &&
flatpak install flathub com.jetbrains.WebStorm -y &&
flatpak install flathub org.videolan.VLC -y &&
flatpak install flathub edu.mit.Scratch -y &&
flatpak install flathub com.skype.Client -y &&
flatpak install flathub com.slack.Slack -y &&
flatpak install flathub com.snes9x.Snes9x -y &&
flatpak install flathub com.spotify.Client -y &&
flatpak install flathub com.valvesoftware.Steam -y &&
flatpak install flathub com.sublimetext.three -y &&
flatpak install flathub org.telegram.desktop -y &&
flatpak install flathub com.todoist.Todoist -y &&
flatpak install flathub com.transissionbt.Transmission -y &&
flatpak install flathub io.dbeaver.DbeaverCommunity -y &&
flatpak install flathub us.zoom.Zoom -y &&
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community &&

## Softwares que precisam de download externo ##

cd ~/Downloads/ || cd ~/Transferências/ && 

wget -c https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb &&
wget -c https://download.virtualbox.org/virtualbox/6.1.20/VirtualBox-6.1.20-143896-Linux_amd64.run &&
wget -c https://download.teamviewer.com/download/linux/teamviewer_amd64.deb &&
wget -c https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2020.03.04_amd64.deb &&
wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && 
wget -c https://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb &&
wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe &&
wget -c https://launchpad.net/rapid/pyqt/0.9.26/+download/install.py &&
## wget -c https://sourceforge.net/projects/curlew/files/latest/download &&
## wget -c https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 &&
wget -c https://github.com/Diolinux/PhotoGIMP/releases/download/1.0/PhotoGIMP.by.Diolinux.v2020.for.Flatpak.zip && 

unzip *.zip && cd "PhotoGIMP by Diolinux v2020 for Flatpak" && cd "PATCH" && mkdir -p /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && cp -R * /home/$USER/.var/app/org.gimp.GIMP/config/GIMP/2.10/ && ## Instala o PhotoGIMP para Flatpak
sudo dpkg -i *.deb &&
sudo python3 install.py && # Instala o Rapid Photo Downloader
sudo ./VirtualBox-6.1.20-143896-Linux_amd64.run && 
sudo tar -xvzf *.tar.gz &&

## Instalando pacotes Snap ##
 
sudo snap install skype --classic &&  
sudo snap install code --classic &&  
sudo snap install --edge node --classic && 
sudo snap install insomnia && 
sudo snap install homeserver &&
sudo snap install notable --classic &&
sudo snap install simplescreenrecorder &&
sudo snap install vokoscreen-ng &&
sudo snap install mysql-workbench-community &&
sudo snap install chaseapp &&



## Wine softwares ###
## wget -c https://uploads.treeunfe.me/downloads/instalar-freenfe.exe

wine instalar-freenfe.exe ;

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

#Fim do Script ##

echo "Finalizado"
