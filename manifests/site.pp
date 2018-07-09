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
	
	# if
	if $operatingsystem == 'Ubuntu' {
		notify { "I am running on $operatingsystem.":

		}
	}
	elsif $operatingsystem == 'CentOS' {
		notify { "Who are you?":
	
		}
	}

	# in
	if $operatingsystem in ['Ubuntu', 'CentOS'] {
		notify { "I am ruuning on $operatingsystem.":

		}
	}

	# case
	case $operatingsystem {
		'Ubuntu': {
			$variable = 'ubuntu'	
		}
		'CentOS': {
			$variable = 'centos'
		}
	}

	notify { "I an running on $variable.":
		
	}

	# selector
	$mysystem = $operatingsystem ? {
		'Ubuntu' => 'ubuntu-xxx',
		'CentOS' => 'centos-xxx',
	}

	notify { "I am running on $mysystem":

	}
}

