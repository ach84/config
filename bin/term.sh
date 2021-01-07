# no shell select - use by include

run_mterm ()
{
	mlterm
	exit 0
}

run_xfce4 ()
{
	xfce4-terminal
	exit 0
}

run_xterm ()
{
	xterm -bg black -fg white -fa Monospace -fs 14
	exit 0
}

[ -x /usr/bin/mlterm ] && run_mterm
[ -x /usr/bin/xfce4-terminal ] && run_xfce4
[ -x /usr/bin/xterm ] && run_xterm

exit 0
