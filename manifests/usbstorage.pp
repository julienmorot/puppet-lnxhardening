class lnxhardening::usbstorage {
    file_line { 'blacklist_usb_storage':
        ensure => present,
        path   => '/etc/modprobe.d/blacklist.conf',
        line   => 'blacklist usb_storage',
    }
}

