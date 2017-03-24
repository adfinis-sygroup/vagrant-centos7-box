Veewee::Session.declare({
  :cpu_count => '1',
  :memory_size=> '512',
  :disk_size => '40960',
  :disk_format => 'VDI',
  :hostiocache => 'on',
  :os_type_id => 'RedHat6_64',
  :iso_file => "CentOS-7-x86_64-NetInstall-1611.iso",
  :iso_src => "http://pkg.adfinis-sygroup.ch/centos/7/isos/x86_64/CentOS-7-x86_64-NetInstall-1611.iso",
  :iso_md5 => "06187f7485b8224f480b61962ddeae85",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 300,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "modtrim.sh",
    "zerodisk.sh",
    "zerodisk.sh",
    "hwaddr.sh"
  ],
  :postinstall_timeout => 10000
})
