class tag {
	
	tag("suhuazizi")	

	file { "/tmp/tag":
		ensure => file,
		content => 'I am a tag.',
		tag => 'suhua',
	}

	file { 'tag2':
		path => '/tmp/tag2',
		ensure => file,
		content => 'I am tag2',
		tag => 'lala',
	}
}
