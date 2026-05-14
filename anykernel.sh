### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers
## Xiaomi Mi 11 / venus
## Kernel-only installer, no ramdisk unpack

### AnyKernel setup
# begin properties
properties() { '
kernel.string=Venus Droidspaces Kernel by MiniGregoriio
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=venus
device.name2=Venus
device.name3=mi11
device.name4=Mi11
device.name5=Mi 11
supported.versions=
supported.patchlevels=
'; } # end properties


### AnyKernel install

## boot shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - DO NOT REMOVE
. tools/ak3-core.sh;

# boot install
# Use split_boot/flash_boot because this boot image may not contain a ramdisk.
# We only need to replace the kernel Image.
split_boot;
flash_boot;
## end boot install


## init_boot shell variables
#block=init_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

#reset_ak;

# init_boot install
#dump_boot;
#write_boot;
## end init_boot install


## vendor_kernel_boot shell variables
#block=vendor_kernel_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

#reset_ak;

# vendor_kernel_boot install
#split_boot;
#flash_boot;
## end vendor_kernel_boot install


## vendor_boot shell variables
#block=vendor_boot;
#is_slot_device=1;
#ramdisk_compression=auto;
#patch_vbmeta_flag=auto;

#reset_ak;

# vendor_boot install
#dump_boot;
#write_boot;
## end vendor_boot install