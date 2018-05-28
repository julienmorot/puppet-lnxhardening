class lnxhardening::apparmor {
        package { 'apparmor':
                ensure=>'installed',
        }
}
