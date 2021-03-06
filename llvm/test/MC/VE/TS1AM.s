# RUN: llvm-mc -triple=ve --show-encoding < %s \
# RUN:     | FileCheck %s --check-prefixes=CHECK-ENCODING,CHECK-INST
# RUN: llvm-mc -triple=ve -filetype=obj < %s | llvm-objdump -d - \
# RUN:     | FileCheck %s --check-prefixes=CHECK-INST

# CHECK-INST: ts1am.l %s20, 20(%s11), %s32
# CHECK-ENCODING: encoding: [0x14,0x00,0x00,0x00,0x8b,0xa0,0x14,0x42]
ts1am.l %s20, 20(%s11), %s32

# CHECK-INST: ts1am.w %s20, 8192, 63
# CHECK-ENCODING: encoding: [0x00,0x20,0x00,0x00,0x00,0x3f,0x94,0x42]
ts1am.w %s20, 8192, 63

# CHECK-INST: ts1am.l %s20, 8192, 127
# CHECK-ENCODING: encoding: [0x00,0x20,0x00,0x00,0x00,0x7f,0x14,0x42]
ts1am.l %s20, 8192, 127
