#!/bin/bash
# mount_shares.sh
# check if Synology Samba shares are mounted, else remount them
# The password for the "viewer" account on synologynas has been
# saved in OSX Keychain by manually mounting through the UI
# See the symlinked file in 
# symlinks/Library/LaunchAgents/com.brockangelo.maintainsmb.plist

SAMBA_SHARES=("Movies" "TV Shows" "Music")

for i in "${SAMBA_SHARES[@]}"
do
   :
   # Check if the mount point exists and is a mounted volume
   if ! mount | grep "/Volumes/${i}"; then
       # If not mounted, try to remount it using AppleScript
       osascript -e "mount volume \"smb://viewer@synologynas/${i}\""
   fi
done
