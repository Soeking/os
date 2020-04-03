cd $(
  cd $(dirname $0)
  pwd
)

nasm boot.s -o boot.img -l boot.lst
