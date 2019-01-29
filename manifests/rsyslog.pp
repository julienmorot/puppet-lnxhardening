class lnxhardening::rsyslog {
        package { 'rsyslog': ensure=>'installed' }

        service { 'rsyslog':
                ensure => running,
                enable => true,
        }
}

