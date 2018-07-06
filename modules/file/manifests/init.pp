class file {
#	file { '/tmp/test':
#		ensure => 'file'
#	}

#	file { 'test':
#		path => '/tmp/test',
#		ensure => 'file',
#	}

	file { '/tmp/test':
		ensure => 'file',
		source => 'puppet:///modules/file/test'
	}

	file { '/tmp/testdir':
		ensure => 'directory',
	}
	
	file { '/tmp/testlink':
		ensure => 'link',
		target => '/tmp/test'
	}
}

