class user {
#	user { 'suhuazizi':
#		ensure => present,
#		uid => 100023,
#		managehome => true,
#		allowdupe => true,
#		home => '/home/suhuazizi',
#		shell => '/bin/bash',
#	}

	user { 'suhuazizi':
		ensure => absent,
		managehome => true,
	}
}
