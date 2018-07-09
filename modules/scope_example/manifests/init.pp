class scope_example {
	$variable = 'private'
	$parent_variable = 'bbb'
	notify{"Message from private: $variable":}
	notify{"Message from parent: $parent_variable, from global: $global_variable":}

	File {
		ensure => 'directory'
	}

	file { "/tmp/lalala":
		
	}
}
