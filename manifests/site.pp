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
