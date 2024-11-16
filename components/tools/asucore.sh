#!/sbin/sh

# Anysuper by Mizumo-prjkt and the Org. MizPrjkt (MizProject)
# Do not Modify

# This version is in testing

home=/data/anysuper
block=/dev/block/mmcblk0
bysuper=/dev/block/by-name/super
byuserdata=/dev/block/by-name/userdata
ofd=$1


ui_say() {
  until [ ! "$1" ]; do 
    echo -e "ui_print $1\nui_print" > $ofd;
    shift;
  done;
}

abort() {
    ui_print " " "$@"
    rm -rf $home
    exit 1
}

mnt_test() {
    mount  $byuserdata /data
    ex=$?
    if [ $ex != '0' ]; then
        abort "Cannot mount data. Please try to format it by setting the filesystem from f2fs to ext4 and f2fs again (since Most android roms dont natively support ext4)"
    fi
}

sizedt() {
  if [ "$(ls -nl $home/super.img | awk '{print $5}')" -lt 238100 ]; then
    abort "File not extracted properly"
  fi
}

flash() {
  fsize="$(ls -nl $home/super.img | awk '{print $5}')"
  blksize="$(blockdev --getsize64 $bysuper)"
  if [ "$blksize" -gt "$fsize" ]; then
    ui_print "Size OK"
    dd if="$home/super.img" of=$bysuper bs=4096
  else
    abort "not enough size"
  fi
}




