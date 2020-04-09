cd $(
  cd $(dirname $0)
  pwd
)

qemu-system-i386 -rtc base=localtime -drive file=boot.img,format=raw -boot order=c
