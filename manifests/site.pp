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
	if 10 > 5 {
		notify { "Ten is larger than five.":
	
		}
	}
	else {
		notify { "Then is smaller than five.":

		}
	}

	$ten = 5 + 5

	notify { "5 + 5 is $ten.": }
}	
