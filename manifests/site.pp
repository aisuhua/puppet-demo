node default {
	include sshd
	include user
	include group
	include nginx
	include file
	include service
	include cron
	include exec
	include notify
}

node base_server {
	file { '/tmp/base_server':
		ensure => file,
		content => 'base_server',
	}
}

node ubuntu-test2 inherits base_server {
	include tag
}


