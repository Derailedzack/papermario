.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_B1B570
/* B1B570 80240000 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* B1B574 80240004 AFBF0014 */  sw        $ra, 0x14($sp)
/* B1B578 80240008 AFB00010 */  sw        $s0, 0x10($sp)
/* B1B57C 8024000C F7B80028 */  sdc1      $f24, 0x28($sp)
/* B1B580 80240010 F7B60020 */  sdc1      $f22, 0x20($sp)
/* B1B584 80240014 F7B40018 */  sdc1      $f20, 0x18($sp)
/* B1B588 80240018 0C00EAD2 */  jal       get_npc_safe
/* B1B58C 8024001C 0000202D */   daddu    $a0, $zero, $zero
/* B1B590 80240020 0040802D */  daddu     $s0, $v0, $zero
/* B1B594 80240024 1200002D */  beqz      $s0, .L802400DC
/* B1B598 80240028 24020005 */   addiu    $v0, $zero, 5
/* B1B59C 8024002C 86030084 */  lh        $v1, 0x84($s0)
/* B1B5A0 80240030 1462002B */  bne       $v1, $v0, .L802400E0
/* B1B5A4 80240034 24020002 */   addiu    $v0, $zero, 2
/* B1B5A8 80240038 C60C0038 */  lwc1      $f12, 0x38($s0)
/* B1B5AC 8024003C 4480B000 */  mtc1      $zero, $f22
/* B1B5B0 80240040 3C01C2C8 */  lui       $at, 0xc2c8
/* B1B5B4 80240044 4481C000 */  mtc1      $at, $f24
/* B1B5B8 80240048 C60E0040 */  lwc1      $f14, 0x40($s0)
/* B1B5BC 8024004C 4406B000 */  mfc1      $a2, $f22
/* B1B5C0 80240050 4407C000 */  mfc1      $a3, $f24
/* B1B5C4 80240054 3C013C8E */  lui       $at, 0x3c8e
/* B1B5C8 80240058 3421FA2E */  ori       $at, $at, 0xfa2e
/* B1B5CC 8024005C 4481A000 */  mtc1      $at, $f20
/* B1B5D0 80240060 0C00A7B5 */  jal       dist2D
/* B1B5D4 80240064 00000000 */   nop      
/* B1B5D8 80240068 0C00A85B */  jal       sin_rad
/* B1B5DC 8024006C 4600A306 */   mov.s    $f12, $f20
/* B1B5E0 80240070 4600A306 */  mov.s     $f12, $f20
/* B1B5E4 80240074 0C00A874 */  jal       cos_rad
/* B1B5E8 80240078 46000506 */   mov.s    $f20, $f0
/* B1B5EC 8024007C C6060038 */  lwc1      $f6, 0x38($s0)
/* B1B5F0 80240080 46163581 */  sub.s     $f22, $f6, $f22
/* B1B5F4 80240084 46160082 */  mul.s     $f2, $f0, $f22
/* B1B5F8 80240088 00000000 */  nop       
/* B1B5FC 8024008C C6040040 */  lwc1      $f4, 0x40($s0)
/* B1B600 80240090 46182101 */  sub.s     $f4, $f4, $f24
/* B1B604 80240094 4604A202 */  mul.s     $f8, $f20, $f4
/* B1B608 80240098 00000000 */  nop       
/* B1B60C 8024009C 4600A507 */  neg.s     $f20, $f20
/* B1B610 802400A0 4616A502 */  mul.s     $f20, $f20, $f22
/* B1B614 802400A4 00000000 */  nop       
/* B1B618 802400A8 46040002 */  mul.s     $f0, $f0, $f4
/* B1B61C 802400AC 00000000 */  nop       
/* B1B620 802400B0 46081080 */  add.s     $f2, $f2, $f8
/* B1B624 802400B4 4600A500 */  add.s     $f20, $f20, $f0
/* B1B628 802400B8 46161081 */  sub.s     $f2, $f2, $f22
/* B1B62C 802400BC 4604A501 */  sub.s     $f20, $f20, $f4
/* B1B630 802400C0 46023180 */  add.s     $f6, $f6, $f2
/* B1B634 802400C4 C6000040 */  lwc1      $f0, 0x40($s0)
/* B1B638 802400C8 46140000 */  add.s     $f0, $f0, $f20
/* B1B63C 802400CC 24020002 */  addiu     $v0, $zero, 2
/* B1B640 802400D0 E6060038 */  swc1      $f6, 0x38($s0)
/* B1B644 802400D4 08090038 */  j         .L802400E0
/* B1B648 802400D8 E6000040 */   swc1     $f0, 0x40($s0)
.L802400DC:
/* B1B64C 802400DC 24020002 */  addiu     $v0, $zero, 2
.L802400E0:
/* B1B650 802400E0 8FBF0014 */  lw        $ra, 0x14($sp)
/* B1B654 802400E4 8FB00010 */  lw        $s0, 0x10($sp)
/* B1B658 802400E8 D7B80028 */  ldc1      $f24, 0x28($sp)
/* B1B65C 802400EC D7B60020 */  ldc1      $f22, 0x20($sp)
/* B1B660 802400F0 D7B40018 */  ldc1      $f20, 0x18($sp)
/* B1B664 802400F4 03E00008 */  jr        $ra
/* B1B668 802400F8 27BD0030 */   addiu    $sp, $sp, 0x30