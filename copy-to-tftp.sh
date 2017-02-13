#!/bin/sh

DEST=/srv/http/archlinux-custom

mkdir -p $DEST/x86_64
cp ./work/iso/arch/x86_64/airootfs.sfs $DEST/x86_64/
cp ./work/iso/arch/boot/x86_64/archiso.img $DEST/x86_64/
cp ./work/iso/arch/boot/x86_64/vmlinuz $DEST/x86_64/
cp ./work/iso/arch/boot/intel_ucode.img $DEST/x86_64/
