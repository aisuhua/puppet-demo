class service {
#	service { 'nginx':
#		ensure => 'running'
#	}

	file { '/etc/nginx/nginx.conf':
		ensure => "present",
		source => 'puppet:///modules/service/nginx.conf',
		notify => Service['nginx']
	}

	service { 'nginx':
		ensure => 'running',
		enable => true,
		hasstatus => true,
		hasrestart => true,
		restart => '/etc/init.d/nginx reload'
	}
}
