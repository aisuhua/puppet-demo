class cron {
#	cron { 'ntpdate':
#		command => '/bin/cat /etc/issue',
#		hour => 6,
#		minute => 0, 
#	}

	cron { 'ntpdate':
		ensure => 'absent'
	}

#	cron { 'cat':
#		command => '/bin/cat /etc/issue',
#		user => 'root',
#		minute => '*/1',
#	}

	cron { 'cat':
		command => '/bin/cat /etc/issue',
		user => 'root',
		hour => '*/2',
		minute => '0',
	}
}
