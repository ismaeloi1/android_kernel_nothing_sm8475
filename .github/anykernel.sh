# AnyKernel3 - Script for lhuna kernel
# osm0sis @ xda-developers

## AnyKernel setup
properties() { '
kernel.string=lhuna
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=pong
device.name2=Pong
supported.versions=12,13,14,15
supported.patchlevels=
'; }

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

. tools/ak3-core.sh;

## AnyKernel install
split_boot;
flash_boot;
## end install
