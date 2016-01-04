#!/bin/sh
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.

#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Script for install and configure to fedora

# Configurar Teclado Thinkpad
# /etc/X11/xorg.conf.d/00-keyboard.conf

# Option "XkbLayout" "br"
# Option "XkbModel" "thinkpad60"

# Updates Fast
sudo dnf -y install yum-plugin-fastestmirror

# RPM Fusion
sudo dnf -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-23.noarch.rpm
sudo dnf -y install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-23.noarch.rpm

# Postgres
sudo dnf -y install http://yum.postgresql.org/9.4/fedora/fedora-23-x86_64/pgdg-fedora94-9.4-4.noarch.rpm

# Updates
sudo dnf -y check-update
sudo dnf -y update

# Reboot
#sudo reboot

# Instalar pacotes basicos para compilacao
sudo dnf -y install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms redhat-lsb
sudo dnf -y install wget p7zip p7zip-plugins bzip2 unrar unzip cabextract lzip cabextract nano xz-lzma-compat

# Languages
sudo dnf -y install ruby rubygem-i18n

# SysAdmin
sudo dnf -y install bcache-tools gparted

# SysAdmin Network
sudo dnf -y install firewall-config vpnc NetworkManager-vpnc NetworkManager-vpnc-gnome NetworkManager-openconnect docker libvirt libvirt-client openldap openvpn net-tools telnet
sudo dnf -y install virt-manager xca cockpit gnomint

# Libs
sudo dnf -y install compat-libstdc++-33.i686 libtxc_dxtn.i686 libXp.i686 unixODBC.i686 alsa-lib.i686 libX11.i686 libXau.i686 libXext.i686 libXi.i686 libXp.i686 libXtst.i686 libxcb.i686

# Nautilus
sudo dnf -y install nautilus-extensions nautilus-image-converter nautilus-open-terminal nautilus-search-tool nautilus-terminal nautilus-pastebin

# Gnome
sudo dnf -y install gnome-todo gnome-calendar gnome-characters gnome-documents gnome-commander gnome-clocks gnome-maps gnome-music gnome-chess gnome-classic-session

# Samba
sudo dnf -y install samba system-config-samba

# Internet
sudo dnf -y install thunderbird pidgin xchat ekiga geary filezilla

# Dropbox
sudo dnf -y install https://www.dropbox.com/download?dl=packages/fedora/nautilus-dropbox-2015.02.12-1.fedora.x86_64.rpm

# Libre Office
sudo dnf -y install libreoffice-base libreoffice-impress libreoffice-math libreoffice-draw libreoffice-writer libreoffice-calc libreoffice-langpack-pt-BR libreoffice-pdfimport libreoffice-postgresql 

# Gnome 
sudo dnf -y install gnome-tweak-tool 

# Tasks
sudo dnf -y install cairo-dock cairo-dock-freeworld

# Dev
sudo dnf -y install git java-1.8.0-openjdk meld nodejs rubygem-compass vagrant vim-enhanced geany geary freemind

# Database
sudo dnf -y install postgresql94.x86_64 postgresql94-server.x86_64 postgresql94-contrib.x86_64 postgresql94-devel.x86_64 pgadmin3_94 

# Editors
sudo dnf -y install bluefish dia inkscape scribus gimp gimp-data-extras gimp-lqr-plugin gimp-resynthesizer

# Auxiliary
sudo dnf -y install tuxcmd qbittorrent tigervnc liveusb-creator unetbootin
sudo dnf -y install bijiben gnome-contacts cups-pdf alexandria gnome-maps stellarium calibre cheese

# Remote Access
sudo dnf -y install remmina remmina-plugins-vnc remmina-plugins-rdp

# Ansible
yum install -y ansible rubygem-thor rubygem-parseconfig util-linux

# Wine
sudo dnf -y install wine

# Multimedia
sudo dnf -y install gnome-music vlc pitivi clementine lmms banshee banshee-community-extensions
sudo dnf -y install gstreamer gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer1-libav libdvdread ffmpeg ffmpeg-libs gstreamer-ffmpeg libdvdread libdvdnav lsdvd

# Skype Site
sudo dnf -y install libXv.i686 libXScrnSaver.i686 qt.i686 qt-x11.i686 pulseaudio-libs.i686 pulseaudio-libs-glib2.i686 alsa-plugins-pulseaudio.i686 libv4l.i686
sudo dnf -y install http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm

# Instalar Chrome
sudo rpm --import https://dl-ssl.google.com/linux/linux_signing_key.pub
sudo dnf -y install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo dnf -y install https://dl.google.com/linux/direct/google-talkplugin_current_x86_64.rpm

# Flash
sudo dnf -y install http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
sudo dnf -y install flash-plugin

# Virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | rpm --import -
sudo wget --progress=bar -O /etc/yum.repos.d/virtualbox.repo http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
sudo dnf -y install VirtualBox-5.0
sudo usermod -a -G vboxusers $USER

# Teamviewer
sudo dnf -y install http://download.teamviewer.com/download/teamviewer.i686.rpm

# Pencil
sudo dnf -y install http://evoluspencil.googlecode.com/files/pencil-2.0.5-1.fc19.noarch.rpm

# Extras

# Themes
sudo dnf -y install faience-icon-theme
sudo dnf -y install elementary-icon-theme
sudo dnf -y install echo-icon-theme
sudo dnf -y install numix-icon-theme numix-icon-theme-circle
sudo dnf -y install tango-icon-theme tango-icon-theme-extras

# Popcorntime
#sudo dnf -y install ftp://ftp.pbone.net/mirror/ftp.sourceforge.net/pub/sourceforge/p/po/postinstaller/fedora/releases/22/x86_64/popcorntime-0.3.7.2-2.20150429gitddee0b5.fc22.x86_64.rpm

# MS Fonts
sudo dnf -y install http://ufpr.dl.sourceforge.net/project/mscorefonts2/rpms/msttcore-fonts-installer-2.6-1.noarch.rpm

# Viber
#sudo dnf -y install https://download.cdn.viber.com/desktop/Linux/viber.rpm

# PDF Editor
sudo dnf -y install http://code-industry.net/public/master-pdf-editor3-3.1.00-1.x86_64.rpm

# WPS Soft
#sudo dnf -y install http://kdl.cc.ksosoft.com/wps-community/download/a18/wps-office-9.1.0.4961-1.a18p1.x86_64.rpm