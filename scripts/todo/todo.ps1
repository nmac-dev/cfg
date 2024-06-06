# start-process <process> -windowstyle Hidden

$proc = "notepad"

start-process $proc "$env:HOMEPATH\Documents\todo\todo.txt"
start-sleep 10

# shell
$ws = new-object -comobject wscript.shell;

while(1) {
	# select
	if(get-process -Name $proc) {
		#fetch
		$ws.AppActivate($proc)
		# send
		$ws.SendKeys("{F14}")
		$ws.SendKeys("{F15}")
		$ws.SendKeys("{F16}")
	}
	else { exit }
	# sleep
	start-sleep 300
}

