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

node ubuntu-test2 {
	file { "/tmp/$hostname":
		ensure => file,
		content => "I am running on $operatingsystem, ip $ipaddress, kernel $kernel",
	}
}
