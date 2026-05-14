#!/bin/sh
# AnyKernel3 Ramdisk Mod Script
# Xiaomi Mi 11 / venus
# Android 16 / SM8350 / lahaina
# Kernel installer by MiniGregoriio

### AnyKernel setup
# global properties
properties() { '
kernel.string=Venus SM8350 Android 16 Kernel by MiniGregoriio
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=venus
device.name2=venus_global
device.name3=venus_cn
device.name4=M2011K2C
device.name5=M2011K2G
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties


### AnyKernel install

## boot files attributes
boot_attributes() {
  set_perm_recursive 0 0 755 644 $RAMDISK/*;
  set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes


# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;


# import functions/variables and setup patching - DO NOT REMOVE
. tools/ak3-core.sh;


# boot install
dump_boot;

# No ramdisk modifications needed.
# This package only replaces the kernel Image inside the existing boot image.

write_boot;


## end boot install
