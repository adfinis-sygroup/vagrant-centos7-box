# Base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

# Delete stuff to keep the image small at any time -> better shrink
rpm -qa | grep firmware | xargs yum -y erase
echo /usr/share/locale/* | tr ' ' '\n' | grep -E "/de_|/en_" | xargs rm -rf
rm -rf /usr/share/doc/*

yum -y update
yum -y clean all
yum -y install epel-release
yum -y install gcc make gcc-c++ zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils bzip2
yum -y clean all

# Delete stuff to keep the image small at any time -> better shrink
rpm -qa | grep firmware | xargs yum -y erase
echo /usr/share/locale/* | tr ' ' '\n' | grep -E "/de_|/en_" | xargs rm -rf
rm -rf /usr/share/doc/*

# Make ssh faster by not waiting on DNS
echo "UseDNS no" >> /etc/ssh/sshd_config
reboot
