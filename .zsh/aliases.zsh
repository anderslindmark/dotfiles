case `uname` in
	Darwin)
		alias ll="ls -lAhG"
		;;
	Linux)
		alias ll="ls -lAh --color"
esac

alias l=ll
alias c="gcal -K -s 1 ."
alias d="date +'%F %H:%M'"
alias pure-ftpwho="sudo docker exec -ti ftp_server /usr/sbin/pure-ftpwho"
alias line="~/bin/line"
alias wol_macbook="wakeonlan 01:25:BC:E7:05:2A"
