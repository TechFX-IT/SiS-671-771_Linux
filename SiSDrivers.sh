#/bin/bash
#Start showing
echo "Welcome to the installation of SiS 671-771 GPUs' drivers."
echo ""
echo "The script may ask you for root permissions, so you'll type your user account's password to complete the process succesfully."
echo ""
echo "Immediatley after the installation the PC will reboot, so don't worry, it's all normal."
echo ""
echo "Let's begin."
echo ""
#Installing git and cloning files
sudo apt-get install git
git clone https://github.com/TechFX-IT/SiS-671-771_Linux /home/SiS\ drivers
#CD into the folder containing the files
cd /home/SiS\ drivers
#Unpacking
tar -xvzf /home/SiS\ drivers/sis64.tar.gz
#Moving driver to the folder
sudo mv -v /home/SiS\ drivers/sisimedia_drv.* /usr/lib/xorg/modules/drivers
#Deleting dangerous files
sudo rm -v /etc/X11/xorg.conf
sudo rm -v ~/.config/monitors.xml
#Moving xorg.conf
sudo mv -v /home/SiS\ drivers/xorg.conf /etc/X11
#Reboot
echo ""
echo ""
echo "Rebooting now..."
echo ""
echo ""
sudo reboot
