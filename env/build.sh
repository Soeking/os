cd $(
  cd $(dirname $0)
  pwd
)

cd ../src/00_boot_only
nasm boot.s -o boot.img -l boot.lst
