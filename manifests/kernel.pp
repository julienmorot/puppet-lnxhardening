class lnxhardening::kernel {

    # Protection againts IP spoofing
    sysctl { 'net.ipv4.conf.all.rp_filter': value => '1' }
    sysctl { 'net.ipv4.conf.default.rp_filter': value => '1' }

    # Ignore source packet routing
    sysctl { 'net.ipv4.conf.all.accept_source_route': value => '0' }
    sysctl { 'net.ipv6.conf.all.accept_source_route': value => '0' }
    sysctl { 'net.ipv4.conf.default.accept_source_route': value => '0' }
    sysctl { 'net.ipv6.conf.default.accept_source_route': value => '0' }

    # Ignore ICMP broadcast requests
    sysctl { 'net.ipv4.icmp_echo_ignore_broadcasts': value => '1' }

    # Ignore source packet routing
    sysctl { 'net.ipv4.conf.all.accept_source_route': value => '0' }
    sysctl { 'net.ipv6.conf.all.accept_source_route': value => '0' }
    sysctl { 'net.ipv4.conf.default.accept_source_route': value => '0' }
    sysctl { 'net.ipv6.conf.default.accept_source_route': value => '0' }

    # Ignore send redirects
    sysctl { 'net.ipv4.conf.all.send_redirects': value => '0' }
    sysctl { 'net.ipv4.conf.default.send_redirects': value => '0' }

    # Log Martians
    sysctl { 'net.ipv4.icmp_ignore_bogus_error_responses': value => '1' }
    sysctl { 'net.ipv4.conf.all.log_martians': value => '1' }
    sysctl { 'net.ipv4.conf.default.log_martians': value => '1' }

    # Block SYN attacks
    sysctl { 'net.ipv4.tcp_syncookies': value => '1' }
    sysctl { 'net.ipv4.tcp_max_syn_backlog': value => '2048' }
    sysctl { 'net.ipv4.tcp_synack_retries': value => '2' }
    sysctl { 'net.ipv4.tcp_syn_retries': value => '5' }

    # Ignore ICMP redirects
    sysctl { 'net.ipv4.conf.all.accept_redirects': value => '0' }
    sysctl { 'net.ipv6.conf.all.accept_redirects': value => '0' }
    sysctl { 'net.ipv4.conf.default.accept_redirects': value => '0' }
    sysctl { 'net.ipv6.conf.default.accept_redirects': value => '0' }

    # Enable Exec Shield
    sysctl { 'kernel.exec-shield': value => '1' }

    # Enable randomized Virtual Memory Region Placement
    sysctl { 'kernel.randomize_va_space': value => '2' }


    # Restrict core dumps
    file_line { 'limits_hard_core':
        ensure => present,
        path   => '/etc/security/limits.conf',
        line   => '* hard core 0',
    }
    sysctl { 'fs.suid_dumpable': value => '0' }

}
