# start-process <process> -windowstyle Hidden

$proc     = "notepad"
$todo_txt = "$env:HOMEPATH\.cfg\scripts\todo\todo.txt"

start-process $proc $todo_list
start-sleep 10

# shell
$ws = new-object -comobject wscript.shell;

while(1) {
	# select
	if(get-process -Name $proc) {
		#fetch
		$ws.AppActivate($proc)
		# send
		$ws.SendKeys("{F13}")
		$ws.SendKeys("{F13}")
		$ws.SendKeys("{F13}")
	}
	else { exit }
	# sleep
	start-sleep 300
}

