class lnxhardening::sshd {
    file_line { 'sshd_permitrootlogin':
        ensure => present,
        path => '/etc/ssh/sshd_config',
        match => '^PermitRootLogin yes',
        line => 'PermitRootLogin no',
        append_on_no_match => true,
    }

    file_line { 'sshd_banner':
        ensure => present,
        path => '/etc/ssh/sshd_config',
        match => '^Banner',
        line => 'Banner /etc/issue.net',
        append_on_no_match => true,
    }

    file { '/etc/issue.net':
        ensure  => file,
        source => "puppet:///modules/lnxhardening/issue.net",
        user => "root",
        group => "root",
        mode => "0644",
    }

    package { 'openssh-server':
        ensure=>'installed',
    }

    service { 'ssh':
        ensure => running,
        enable => true,
        require => Package['openssh-server'],
    }
}

