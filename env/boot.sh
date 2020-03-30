cd $(
  cd $(dirname $0)
  pwd
)

cd ../src/00_boot_only
qemu-system-i386 boot.img
