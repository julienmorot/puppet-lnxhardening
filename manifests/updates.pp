class lnxhardening::updates {
    file { '/etc/apt/apt.conf.d/01autoremove-kernels':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/01autoremove-kernels",
        user => "root",
        group => "root",
        mode => "0644",
    }
    file { '/etc/apt/apt.conf.d/20auto-upgrades':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/20auto-upgrades",
        user => "root",
        group => "root",
        mode => "0644",
    }
    file { '/etc/apt/apt.conf.d/50unattended-upgrades':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/50unattended-upgrades",
        user => "root",
        group => "root",
        mode => "0644",
    }
}


