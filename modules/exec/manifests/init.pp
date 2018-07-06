class exec {
#	exec { 'echo foo':
#		command => 'echo "foo"',
#		path => '/bin:/usr/bin:/usr/sbin',
#	}

	exec { 'tar -zxvf php-7.1.19.tar.gz':
		cwd => '/tmp',
		creates => '/tmp/myfile',
		path => '/bin:/usr/bin:/usr/sbin',
	}
}
