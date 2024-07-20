sudo apt update
sudo apt upgrade
sudo apt-get install extlinux qemu
cd distro
truncate -s 200MB boot.img
mkfs boot.img
mkdir mnt
sudo mount boot.img mnt
extlinux -i mnt
sudo cp bin bzImage lib lib64 linuxrc nanox/sbin/ usr/ mnt
cd mnt
mkdir var etc root tmp dev proc
cd ..
umount mnt