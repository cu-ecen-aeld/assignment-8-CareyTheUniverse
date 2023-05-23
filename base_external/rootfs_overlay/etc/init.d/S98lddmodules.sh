#! /bin/sh

case "$1" in
	start)
		modprobe hello
		/usr/bin/scull_load
		/usr/bin/module_load faulty
		;;
	stop)
		rmmod hello
		/usr/bin/scull_unload
		/usr/bin/module_unload faulty
		;;
	*)
		echo "Exiting"
		exit 1
esac

exit 0
