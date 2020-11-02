#!/bin/bash

# make sure to create the backups directory
if [ ! -d backups ]; then
	mkdir backups
fi

echo 'say Backing started...' | sudo socat EXEC:"docker attach mc",pty STDIN
echo 'say Expect some latency.' | sudo socat EXEC:"docker attach mc",pty STDIN
echo 'save-off' | sudo socat EXEC:"docker attach mc",pty STDIN
echo 'save-all fluid' | sudo socat EXEC:"docker attach mc",pty STDIN
tar -czvf backups/`date '+%Y%m%d-%H%M%S'`.tar.gz data
echo 'save-on' | sudo socat EXEC:"docker attach mc",pty STDIN
echo 'say Backup finished.' | sudo socat EXEC:"docker attach mc",pty STDIN

# todo if there was a problem, be sure auto save is still on

