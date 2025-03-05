# start-process <process> -windowstyle Hidden

$proc     = "notepad"
$todo_txt = "$env:HOMEPATH\.cfg\scripts\todo\todo.txt"

start-process $proc $todo_list
start-sleep 10

# shell
$ws      = new-object -comobject wscript.shell;
$act_key = "{F13}" # activation key

while(1) {
	# select
	if(get-process -Name $proc) {
		#fetch
		$ws.AppActivate($proc)
		# send
		$ws.SendKeys($act_key)
		$ws.SendKeys($act_key)
		$ws.SendKeys($act_key)
	}
	else { exit }
	# sleep
	start-sleep 300
}

