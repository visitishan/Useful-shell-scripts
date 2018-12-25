#!/bin/bash

# Unmount previous mounts
unmount ()
{
	# unmount previously mounted device if any
	fusermount -u ~/android_mount/
}

# Mount new device
mount ()
{
	# make directory to mount
	mkdir -p ~/android_mount/

	# mount the device (can take several minutes)
	# it will also show device information while mounting
	jmtpfs ~/android_mount/

	# display contents
	ls -la ~/android_mount/

	# change directory to the mount directory
	cd ~/android_mount/
}

unmount
mount