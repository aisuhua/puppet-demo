class tag {
	file { "/tmp/tag":
		ensure => file,
		content => 'I am a tag.',
	}
}
