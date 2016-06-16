yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
yum -y erase kernel-devel-`uname -r`
rpm -qa | grep firmware | xargs yum -y erase
rpm -qa | grep kernel | grep -v `uname -r` | xargs yum -y erase
echo /usr/share/locale/* | tr ' ' '\n' | grep -E "/de_|/en_" | xargs rm -rf
rm -rf /usr/share/doc/*
yum -y install plymouth grub
yum -y clean all
rm -rf VBoxGuestAdditions_*.iso
