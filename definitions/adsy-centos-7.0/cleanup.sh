yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts kernel.x86_64p
yum -y install plymouth grub
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso

# Remove traces of mac address from network configuration
sed -i /HWADDR/d /etc/sysconfig/network-scripts/ifcfg-enp0s3
