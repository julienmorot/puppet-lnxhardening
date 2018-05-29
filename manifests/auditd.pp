class lnxhardening::auditd {
        package { 'auditd': ensure=>'installed' }

        service { 'auditd':
                ensure => running,
                enable => true,
                subscribe => File['/etc/audit/rules.d/audit.rules'],
        }

        file { '/etc/audit/rules.d/audit.rules':
                ensure => file,
                require => Package['auditd'],
                source => "puppet:///modules/lnxhardening/audit.rules",
        }

}

