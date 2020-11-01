# checknet for pfSense
Check the presence of internet via the ping on pfSense

## Install

To use this widget you will need to save the file **checknet.sh** in the **/usr/local/bin/** folder

Create a cron entry like this to check it every 30 minutes
```
*/30	*	*	*	*	root	/usr/local/bin/checknet.sh
```

