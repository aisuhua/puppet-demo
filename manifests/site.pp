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

#$myname1 = 'lala'
#class example {
#	$myname2 = 'suhua'
#	notify {"Message from elsewhere: $myname1, $myname2":
#
#	}
#}
#notify {"I love you $myname1, $myname2":}

$global_variable = 'global'

File {
	ensure => file,
	owner => 'suhua'
}

node ubuntu-test2 {
	#include example
	#$parent_variable = 'parent'
	#include scope_example

	$myname = 'suhuazizi'
	$mybody = 'lalalal'
	$num = 10
	notify{ "${myname}${mybody} is am good boy.":

	}

	notify { "environment: $environment, cert: $clientcert, version: $clientversion":

	}

	notify { "servername: $servername, serverip: $serverip, version: $serverversion, module: $module_name":

	}
}

