#!/bin/sh

mkdir linux-kernel
tar -xjvf linux*.bz2 -C linux-kernel
cp linux-kernel/boot/vmlinuz-5.10.74.3-mininet-WSL2 /mnt/c/Users/me/kernel
echo "sudo rm -Rf /lib/modules/5.10.74.3-mininet-WSL2"
echo "sudo mv lib/modules/5.10.74.3-mininet-WSL2 /lib/modules"
echo "sudo modprobe openvswitch"
