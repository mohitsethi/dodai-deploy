class nova_centos::nova_cert::install {
    include nova_centos::common::install

    service {
        openstack-nova-cert:
            ensure => running,
            require => Package[openstack-nova];
    }
}
