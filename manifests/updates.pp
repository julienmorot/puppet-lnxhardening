class lnxhardening::updates {
    package {'unattended-upgrades': ensure=>'installed' }
    file { '/etc/apt/apt.conf.d/01autoremove-kernels':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/01autoremove-kernels",
        owner => "root",
        group => "root",
        mode => "0644",
    }
    file { '/etc/apt/apt.conf.d/20auto-upgrades':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/20auto-upgrades",
        owner => "root",
        group => "root",
        mode => "0644",
    }
    file { '/etc/apt/apt.conf.d/50unattended-upgrades':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/50unattended-upgrades",
        owner => "root",
        group => "root",
        mode => "0644",
    }
}


