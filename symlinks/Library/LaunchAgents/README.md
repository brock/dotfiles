# LaunchAgents

Used for running bash scripts, instead of cron. Some notes:

* The `.plist` files is symlinked into `~/Library/LaunchAgents`
* For bash scripts to have permission to run, you must give `/bin/bash` "Full Disk Access" in `Settings -> Privacy & Security -> Full Disk Access"`. Since `/bin` is a hidden folder, finding `bash` can be tricky. Adding `/bin` to your Favorites in Finder is helpful when setting this up.
* Use the `StandardErrorPath` key to output a log file of errors where you'll notice them. I prefer outputing these to the Desktop so I'll see them an be able to take action, and you can safely delete the error log file after you resolve an error. It will be created if it does not exist. Be mindful of log files filling up if you don't regularly check them. This doesn't have logrotate built in.
* Set the `StartInterval` to a value that makes sense to you, but be mindful of log files getting large if you don't have the log file somewhere you will regularly be checking.
* The `RunAtLoad` key will also run this at startup, which failed for me sporadically on startup, so it is set to `false` so that it waits one `StartInterval` before running.

Run with:
```
launchctl stop com.brockangelo.maintainsmb  
launchctl start com.brockangelo.maintainsmb  
```