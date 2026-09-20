qemu-system-x86_64 \
  -m 4G \
  -enable-kvm \
  -vga virtio \
  -display gtk,show-menubar=off \
  -cpu host \
  -drive file=arch_vm,format=qcow2 \
  -netdev user,id=net0,hostfwd=tcp:127.0.0.1:2222-:22 \
  -device virtio-net-pci,netdev=net0
