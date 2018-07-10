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
	include tag
	
	if tagged('/tmp/tag') {
		notify { "Yes, /tmp/tag is exists.": }
	}

	if tagged('suhua') {
		notify { "Yes, suhua tag is exists.": }
	}

    if tagged('tag2') {
        notify { "Yes, suhua tag2 is exists.": }
    }

    if tagged('lala') {
        notify { "Yes, suhua lala is exists.": }
    }
   
	 if tagged('suhuazizi') {
        notify { "Yes, suhuazizi is exists.": }
    }

	# yes
	if tagged('tag') {
        notify { "Yes, tag is exists.": }
    }

}


