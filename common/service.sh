#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

sleep 200

ASH_STANDALONE=1 /data/adb/ksu/bin/busybox fstrim -v /cache
ASH_STANDALONE=1 /data/adb/ksu/bin/busybox fstrim -v /data
ASH_STANDALONE=1 /data/adb/ksu/bin/busybox fstrim -v /system
