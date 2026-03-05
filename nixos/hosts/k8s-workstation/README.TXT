1. Start VM:
vmctl create -s 8G disk.qcow2
doas vmctl start -c -m 1G -L -i 1 -d latest-nixos-minimal-x86_64-linux.iso -d disk.qcow2 example

2. Select "Options" in NixOS bootloader and boot with serial console option.

3. Wait for the installer to boot and run:

curl -L -O https://raw.githubusercontent.com/nomadium/autoinstall/refs/heads/main/nixos/hosts/minimal/install.script

sudo sh install.script
