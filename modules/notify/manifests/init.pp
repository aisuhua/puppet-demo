class notify {
	notify { "I am running on node $fqdn":
		# name => 'msg1'
	}

	notify { "operatingsystem is $operatingsystem.":
		# require => Notify['msg1']
	}
}
