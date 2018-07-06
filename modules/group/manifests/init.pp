class group {
#	group { 'system':
#		ensure => 'present',
#		name => 'system',
#		gid => 10086,
#		allowdupe => false,
#		members => ['suhua'],
#	}

	group { 'system':
		ensure => 'absent',
	}
}
