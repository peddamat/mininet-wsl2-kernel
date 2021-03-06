#!/usr/bin/env bash

echo "*************************************************************************"
echo "** GETTING STARTED *********"
echo "**"
echo "** Step 1: Customize the kernel by typing:"
echo "* make menuconfig"
echo ""
echo "** Step 2: Compile the kernel:"
echo "* make tarbz2-pkg"
echo ""
echo "* Step 3: Move the kernel package back to WSL2 host:"
echo "* cp ./arch/x86/boot/bzImage /home/kernel/"
echo ""
echo "* Step 4: Move the kernel package back to WSL2 host:"
echo ""
echo "* Step 5: Shutdown WSL2 and update your kernel"
echo "* wsl --shutdown"
echo "* Copy kernel to `C:\Windows\System32\lxss\tools`"
echo ""
echo "* Step 6: Restart WSL2 and load kernel modules"
echo "* mkdir linux-kernel"
echo "* tar -xjvf linux-5.10.74.3-mininet-WSL2-x86.tar.bz2 -C linux-kernel"
echo "* sudo cp -Rf linux-kernel/lib/modules/* /lib/modules/"
echo "* sudo modprobe openvswitch"
echo "*************************************************************************"

bash