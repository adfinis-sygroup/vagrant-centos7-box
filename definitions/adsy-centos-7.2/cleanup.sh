yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts kernel.x86_64p
yum -y erase kernel-devel-`uname -r`
yum -y install plymouth grub
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
