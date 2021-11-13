# Customize kernel
make menuconfig

# Copy kernel to host
cp ./arch/x86_64/boot/bzImage /home/kernel/

# Bundle kernel
make tarbz2-pkg

# Update kernel
- wsl --shutdown
- Copy kernel to `C:\Windows\System32\lxss\tools`

# Load modules
mkdir linux-kernel
tar -xjvf linux-5.10.74.3-mininet-WSL2-x86.tar.bz2 -C linux-kernel
sudo cp -Rf linux-kernel/lib/modules/* /lib/modules/
sudo modprobe openvswitch
