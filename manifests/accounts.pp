class lnxhardening::accounts {
    file { '/etc/profile.d/idle-users.sh':
        ensure  => file,
        source => "puppet:///modules/${module_name}/profile.d-idle-users.sh",
        owner => "root",
        group => "root",
        mode => "0755",
    }

}

