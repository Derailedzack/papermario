.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241388_9A2368
/* 9A2368 80241388 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* 9A236C 8024138C AFB10014 */  sw        $s1, 0x14($sp)
/* 9A2370 80241390 0080882D */  daddu     $s1, $a0, $zero
/* 9A2374 80241394 AFBF001C */  sw        $ra, 0x1c($sp)
/* 9A2378 80241398 AFB20018 */  sw        $s2, 0x18($sp)
/* 9A237C 8024139C AFB00010 */  sw        $s0, 0x10($sp)
/* 9A2380 802413A0 8E300148 */  lw        $s0, 0x148($s1)
/* 9A2384 802413A4 86040008 */  lh        $a0, 8($s0)
/* 9A2388 802413A8 0C00EABB */  jal       get_npc_unsafe
/* 9A238C 802413AC 00A0902D */   daddu    $s2, $a1, $zero
/* 9A2390 802413B0 8E0300D0 */  lw        $v1, 0xd0($s0)
/* 9A2394 802413B4 8E240078 */  lw        $a0, 0x78($s1)
/* 9A2398 802413B8 8C630000 */  lw        $v1, ($v1)
/* 9A239C 802413BC 0083182A */  slt       $v1, $a0, $v1
/* 9A23A0 802413C0 10600013 */  beqz      $v1, .L80241410
/* 9A23A4 802413C4 0040302D */   daddu    $a2, $v0, $zero
/* 9A23A8 802413C8 00041040 */  sll       $v0, $a0, 1
/* 9A23AC 802413CC 00441021 */  addu      $v0, $v0, $a0
/* 9A23B0 802413D0 00022880 */  sll       $a1, $v0, 2
.L802413D4:
/* 9A23B4 802413D4 8E0300D0 */  lw        $v1, 0xd0($s0)
/* 9A23B8 802413D8 C4C2003C */  lwc1      $f2, 0x3c($a2)
/* 9A23BC 802413DC 00A31021 */  addu      $v0, $a1, $v1
/* 9A23C0 802413E0 C4400008 */  lwc1      $f0, 8($v0)
/* 9A23C4 802413E4 46800020 */  cvt.s.w   $f0, $f0
/* 9A23C8 802413E8 4602003E */  c.le.s    $f0, $f2
/* 9A23CC 802413EC 00000000 */  nop
/* 9A23D0 802413F0 45020003 */  bc1fl     .L80241400
/* 9A23D4 802413F4 24840001 */   addiu    $a0, $a0, 1
/* 9A23D8 802413F8 08090504 */  j         .L80241410
/* 9A23DC 802413FC AE240078 */   sw       $a0, 0x78($s1)
.L80241400:
/* 9A23E0 80241400 8C620000 */  lw        $v0, ($v1)
/* 9A23E4 80241404 0082102A */  slt       $v0, $a0, $v0
/* 9A23E8 80241408 1440FFF2 */  bnez      $v0, .L802413D4
/* 9A23EC 8024140C 24A5000C */   addiu    $a1, $a1, 0xc
.L80241410:
/* 9A23F0 80241410 C6400000 */  lwc1      $f0, ($s2)
/* 9A23F4 80241414 E4C00018 */  swc1      $f0, 0x18($a2)
/* 9A23F8 80241418 8E0200CC */  lw        $v0, 0xcc($s0)
/* 9A23FC 8024141C 8C420004 */  lw        $v0, 4($v0)
/* 9A2400 80241420 ACC20028 */  sw        $v0, 0x28($a2)
/* 9A2404 80241424 24020001 */  addiu     $v0, $zero, 1
/* 9A2408 80241428 AE200074 */  sw        $zero, 0x74($s1)
/* 9A240C 8024142C AE220070 */  sw        $v0, 0x70($s1)
/* 9A2410 80241430 8FBF001C */  lw        $ra, 0x1c($sp)
/* 9A2414 80241434 8FB20018 */  lw        $s2, 0x18($sp)
/* 9A2418 80241438 8FB10014 */  lw        $s1, 0x14($sp)
/* 9A241C 8024143C 8FB00010 */  lw        $s0, 0x10($sp)
/* 9A2420 80241440 03E00008 */  jr        $ra
/* 9A2424 80241444 27BD0020 */   addiu    $sp, $sp, 0x20