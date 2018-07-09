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
	
	# array
	$arr = ['suhua', 'baidu', 'google']
	notify { $arr[1]: }

	# hash
	$hash = {
		id => 10086,
		name => 'suhua',
		sex => 'male',
	}
	notify { $hash['sex']: }

	file { ['/tmp/file1', '/tmp/file2']:
		ensure => file,
		owner => 'suhua',		
	}
	
}
