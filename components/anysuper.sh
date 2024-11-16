#!/sbin/sh
# AnySuper Main Frameworks

# Thanks for chainfire for the DeepSleep fix

# Importing functions
. tools/asucore.sh


ui_print "Installing super.img"

userdata_rmount

start




# Deepsleep fix (@Chainfire)
for i in `ls /sys/class/scsi_disk/`; do
	cat /sys/class/scsi_disk/$i/write_protect 2>/dev/null | grep 1 >/dev/null
	if [ $? -eq 0 ]; then
		echo 'temporary none' > /sys/class/scsi_disk/$i/cache_type
	fi
done;