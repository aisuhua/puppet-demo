class nginx {
#	package { 'nginx':
#		ensure => installed
#	}

	package {
		['nginx', 'mysql-client']:
		ensure => installed
	}
}
