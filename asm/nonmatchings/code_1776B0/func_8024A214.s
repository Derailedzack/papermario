.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8024A214
/* 178AF4 8024A214 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 178AF8 8024A218 AFB20028 */  sw        $s2, 0x28($sp)
/* 178AFC 8024A21C 00A0902D */  daddu     $s2, $a1, $zero
/* 178B00 8024A220 AFB10024 */  sw        $s1, 0x24($sp)
/* 178B04 8024A224 3C11800B */  lui       $s1, %hi(D_800B22D8)
/* 178B08 8024A228 263122D8 */  addiu     $s1, $s1, %lo(D_800B22D8)
/* 178B0C 8024A22C 3C02802A */  lui       $v0, %hi(D_8029F27C)
/* 178B10 8024A230 9442F27C */  lhu       $v0, %lo(D_8029F27C)($v0)
/* 178B14 8024A234 3C04800E */  lui       $a0, %hi(gBattleStatus)
/* 178B18 8024A238 2484C070 */  addiu     $a0, $a0, %lo(gBattleStatus)
/* 178B1C 8024A23C AFBF002C */  sw        $ra, 0x2c($sp)
/* 178B20 8024A240 AFB00020 */  sw        $s0, 0x20($sp)
/* 178B24 8024A244 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 178B28 8024A248 F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 178B2C 8024A24C F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 178B30 8024A250 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 178B34 8024A254 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 178B38 8024A258 F7B40030 */  sdc1      $f20, 0x30($sp)
/* 178B3C 8024A25C 30430700 */  andi      $v1, $v0, 0x700
/* 178B40 8024A260 304500FF */  andi      $a1, $v0, 0xff
/* 178B44 8024A264 24020100 */  addiu     $v0, $zero, 0x100
/* 178B48 8024A268 10620044 */  beq       $v1, $v0, .L8024A37C
/* 178B4C 8024A26C 28620101 */   slti     $v0, $v1, 0x101
/* 178B50 8024A270 10400005 */  beqz      $v0, .L8024A288
/* 178B54 8024A274 24020200 */   addiu    $v0, $zero, 0x200
/* 178B58 8024A278 10600007 */  beqz      $v1, .L8024A298
/* 178B5C 8024A27C 24020002 */   addiu    $v0, $zero, 2
/* 178B60 8024A280 08092A58 */  j         .L8024A960
/* 178B64 8024A284 00000000 */   nop
.L8024A288:
/* 178B68 8024A288 1062003F */  beq       $v1, $v0, .L8024A388
/* 178B6C 8024A28C 24020002 */   addiu    $v0, $zero, 2
/* 178B70 8024A290 08092A58 */  j         .L8024A960
/* 178B74 8024A294 00000000 */   nop
.L8024A298:
/* 178B78 8024A298 8C8500D8 */  lw        $a1, 0xd8($a0)
.L8024A29C:
/* 178B7C 8024A29C 10A001B0 */  beqz      $a1, .L8024A960
/* 178B80 8024A2A0 0000102D */   daddu    $v0, $zero, $zero
/* 178B84 8024A2A4 C4BA0144 */  lwc1      $f26, 0x144($a1)
/* 178B88 8024A2A8 C4B6014C */  lwc1      $f22, 0x14c($a1)
/* 178B8C 8024A2AC 84A40428 */  lh        $a0, 0x428($a1)
/* 178B90 8024A2B0 90A20191 */  lbu       $v0, 0x191($a1)
/* 178B94 8024A2B4 90A30190 */  lbu       $v1, 0x190($a1)
/* 178B98 8024A2B8 C4A20148 */  lwc1      $f2, 0x148($a1)
/* 178B9C 8024A2BC 4482F000 */  mtc1      $v0, $f30
/* 178BA0 8024A2C0 00000000 */  nop
/* 178BA4 8024A2C4 4680F7A0 */  cvt.s.w   $f30, $f30
/* 178BA8 8024A2C8 4483A000 */  mtc1      $v1, $f20
/* 178BAC 8024A2CC 00000000 */  nop
/* 178BB0 8024A2D0 4680A520 */  cvt.s.w   $f20, $f20
/* 178BB4 8024A2D4 00021842 */  srl       $v1, $v0, 1
/* 178BB8 8024A2D8 44830000 */  mtc1      $v1, $f0
/* 178BBC 8024A2DC 00000000 */  nop
/* 178BC0 8024A2E0 46800020 */  cvt.s.w   $f0, $f0
/* 178BC4 8024A2E4 46001080 */  add.s     $f2, $f2, $f0
/* 178BC8 8024A2E8 00021082 */  srl       $v0, $v0, 2
/* 178BCC 8024A2EC 44820000 */  mtc1      $v0, $f0
/* 178BD0 8024A2F0 00000000 */  nop
/* 178BD4 8024A2F4 46800020 */  cvt.s.w   $f0, $f0
/* 178BD8 8024A2F8 0C09A75B */  jal       get_actor
/* 178BDC 8024A2FC 46001600 */   add.s    $f24, $f2, $f0
/* 178BE0 8024A300 0040802D */  daddu     $s0, $v0, $zero
/* 178BE4 8024A304 12000196 */  beqz      $s0, .L8024A960
/* 178BE8 8024A308 0000102D */   daddu    $v0, $zero, $zero
/* 178BEC 8024A30C C6040144 */  lwc1      $f4, 0x144($s0)
/* 178BF0 8024A310 461A2101 */  sub.s     $f4, $f4, $f26
/* 178BF4 8024A314 3C013F00 */  lui       $at, 0x3f00
/* 178BF8 8024A318 44815000 */  mtc1      $at, $f10
/* 178BFC 8024A31C 00000000 */  nop
/* 178C00 8024A320 460A2102 */  mul.s     $f4, $f4, $f10
/* 178C04 8024A324 00000000 */  nop
/* 178C08 8024A328 92020191 */  lbu       $v0, 0x191($s0)
/* 178C0C 8024A32C C6020148 */  lwc1      $f2, 0x148($s0)
/* 178C10 8024A330 00021842 */  srl       $v1, $v0, 1
/* 178C14 8024A334 44830000 */  mtc1      $v1, $f0
/* 178C18 8024A338 00000000 */  nop
/* 178C1C 8024A33C 46800020 */  cvt.s.w   $f0, $f0
/* 178C20 8024A340 46001080 */  add.s     $f2, $f2, $f0
/* 178C24 8024A344 00021082 */  srl       $v0, $v0, 2
/* 178C28 8024A348 44820000 */  mtc1      $v0, $f0
/* 178C2C 8024A34C 00000000 */  nop
/* 178C30 8024A350 46800020 */  cvt.s.w   $f0, $f0
/* 178C34 8024A354 46001180 */  add.s     $f6, $f2, $f0
/* 178C38 8024A358 C608014C */  lwc1      $f8, 0x14c($s0)
/* 178C3C 8024A35C 3C02802A */  lui       $v0, %hi(D_8029F2A2)
/* 178C40 8024A360 8042F2A2 */  lb        $v0, %lo(D_8029F2A2)($v0)
/* 178C44 8024A364 0440004E */  bltz      $v0, .L8024A4A0
/* 178C48 8024A368 4604D680 */   add.s    $f26, $f26, $f4
/* 178C4C 8024A36C 54400044 */  bnel      $v0, $zero, .L8024A480
/* 178C50 8024A370 4606C001 */   sub.s    $f0, $f24, $f6
/* 178C54 8024A374 08092929 */  j         .L8024A4A4
/* 178C58 8024A378 4600C706 */   mov.s    $f28, $f24
.L8024A37C:
/* 178C5C 8024A37C 8C8500DC */  lw        $a1, 0xdc($a0)
/* 178C60 8024A380 080928A7 */  j         .L8024A29C
/* 178C64 8024A384 00000000 */   nop
.L8024A388:
/* 178C68 8024A388 00051080 */  sll       $v0, $a1, 2
/* 178C6C 8024A38C 00441021 */  addu      $v0, $v0, $a0
/* 178C70 8024A390 8C5000E0 */  lw        $s0, 0xe0($v0)
/* 178C74 8024A394 12000172 */  beqz      $s0, .L8024A960
/* 178C78 8024A398 0000102D */   daddu    $v0, $zero, $zero
/* 178C7C 8024A39C 3C05802A */  lui       $a1, %hi(D_8029F27E)
/* 178C80 8024A3A0 84A5F27E */  lh        $a1, %lo(D_8029F27E)($a1)
/* 178C84 8024A3A4 0C099117 */  jal       get_actor_part
/* 178C88 8024A3A8 0200202D */   daddu    $a0, $s0, $zero
/* 178C8C 8024A3AC C45A002C */  lwc1      $f26, 0x2c($v0)
/* 178C90 8024A3B0 C4560034 */  lwc1      $f22, 0x34($v0)
/* 178C94 8024A3B4 86040428 */  lh        $a0, 0x428($s0)
/* 178C98 8024A3B8 90430073 */  lbu       $v1, 0x73($v0)
/* 178C9C 8024A3BC 90450072 */  lbu       $a1, 0x72($v0)
/* 178CA0 8024A3C0 C4420030 */  lwc1      $f2, 0x30($v0)
/* 178CA4 8024A3C4 4483F000 */  mtc1      $v1, $f30
/* 178CA8 8024A3C8 00000000 */  nop
/* 178CAC 8024A3CC 4680F7A0 */  cvt.s.w   $f30, $f30
/* 178CB0 8024A3D0 4485A000 */  mtc1      $a1, $f20
/* 178CB4 8024A3D4 00000000 */  nop
/* 178CB8 8024A3D8 4680A520 */  cvt.s.w   $f20, $f20
/* 178CBC 8024A3DC 00032842 */  srl       $a1, $v1, 1
/* 178CC0 8024A3E0 44850000 */  mtc1      $a1, $f0
/* 178CC4 8024A3E4 00000000 */  nop
/* 178CC8 8024A3E8 46800020 */  cvt.s.w   $f0, $f0
/* 178CCC 8024A3EC 46001080 */  add.s     $f2, $f2, $f0
/* 178CD0 8024A3F0 00031882 */  srl       $v1, $v1, 2
/* 178CD4 8024A3F4 44830000 */  mtc1      $v1, $f0
/* 178CD8 8024A3F8 00000000 */  nop
/* 178CDC 8024A3FC 46800020 */  cvt.s.w   $f0, $f0
/* 178CE0 8024A400 0C09A75B */  jal       get_actor
/* 178CE4 8024A404 46001600 */   add.s    $f24, $f2, $f0
/* 178CE8 8024A408 0040802D */  daddu     $s0, $v0, $zero
/* 178CEC 8024A40C 12000154 */  beqz      $s0, .L8024A960
/* 178CF0 8024A410 0000102D */   daddu    $v0, $zero, $zero
/* 178CF4 8024A414 C6040144 */  lwc1      $f4, 0x144($s0)
/* 178CF8 8024A418 461A2101 */  sub.s     $f4, $f4, $f26
/* 178CFC 8024A41C 3C013F00 */  lui       $at, 0x3f00
/* 178D00 8024A420 44815000 */  mtc1      $at, $f10
/* 178D04 8024A424 00000000 */  nop
/* 178D08 8024A428 460A2102 */  mul.s     $f4, $f4, $f10
/* 178D0C 8024A42C 00000000 */  nop
/* 178D10 8024A430 92020191 */  lbu       $v0, 0x191($s0)
/* 178D14 8024A434 C6020148 */  lwc1      $f2, 0x148($s0)
/* 178D18 8024A438 00021842 */  srl       $v1, $v0, 1
/* 178D1C 8024A43C 44830000 */  mtc1      $v1, $f0
/* 178D20 8024A440 00000000 */  nop
/* 178D24 8024A444 46800020 */  cvt.s.w   $f0, $f0
/* 178D28 8024A448 46001080 */  add.s     $f2, $f2, $f0
/* 178D2C 8024A44C 00021082 */  srl       $v0, $v0, 2
/* 178D30 8024A450 44820000 */  mtc1      $v0, $f0
/* 178D34 8024A454 00000000 */  nop
/* 178D38 8024A458 46800020 */  cvt.s.w   $f0, $f0
/* 178D3C 8024A45C 46001180 */  add.s     $f6, $f2, $f0
/* 178D40 8024A460 C608014C */  lwc1      $f8, 0x14c($s0)
/* 178D44 8024A464 3C02802A */  lui       $v0, %hi(D_8029F2A2)
/* 178D48 8024A468 8042F2A2 */  lb        $v0, %lo(D_8029F2A2)($v0)
/* 178D4C 8024A46C 0440000C */  bltz      $v0, .L8024A4A0
/* 178D50 8024A470 4604D680 */   add.s    $f26, $f26, $f4
/* 178D54 8024A474 1040000B */  beqz      $v0, .L8024A4A4
/* 178D58 8024A478 4600C706 */   mov.s    $f28, $f24
/* 178D5C 8024A47C 4606C001 */  sub.s     $f0, $f24, $f6
.L8024A480:
/* 178D60 8024A480 460A0082 */  mul.s     $f2, $f0, $f10
/* 178D64 8024A484 00000000 */  nop
/* 178D68 8024A488 3C0140C0 */  lui       $at, 0x40c0
/* 178D6C 8024A48C 44812000 */  mtc1      $at, $f4
/* 178D70 8024A490 46023080 */  add.s     $f2, $f6, $f2
/* 178D74 8024A494 46040003 */  div.s     $f0, $f0, $f4
/* 178D78 8024A498 08092929 */  j         .L8024A4A4
/* 178D7C 8024A49C 46001700 */   add.s    $f28, $f2, $f0
.L8024A4A0:
/* 178D80 8024A4A0 C63C0058 */  lwc1      $f28, 0x58($s1)
.L8024A4A4:
/* 178D84 8024A4A4 46164001 */  sub.s     $f0, $f8, $f22
/* 178D88 8024A4A8 3C013F00 */  lui       $at, 0x3f00
/* 178D8C 8024A4AC 44811000 */  mtc1      $at, $f2
/* 178D90 8024A4B0 00000000 */  nop
/* 178D94 8024A4B4 46020002 */  mul.s     $f0, $f0, $f2
/* 178D98 8024A4B8 00000000 */  nop
/* 178D9C 8024A4BC 4600B580 */  add.s     $f22, $f22, $f0
/* 178DA0 8024A4C0 E7B60010 */  swc1      $f22, 0x10($sp)
/* 178DA4 8024A4C4 3C02802A */  lui       $v0, %hi(D_8029F2A6)
/* 178DA8 8024A4C8 8042F2A6 */  lb        $v0, %lo(D_8029F2A6)($v0)
/* 178DAC 8024A4CC 10400029 */  beqz      $v0, .L8024A574
/* 178DB0 8024A4D0 00000000 */   nop
/* 178DB4 8024A4D4 3C01802A */  lui       $at, %hi(D_8029F28C)
/* 178DB8 8024A4D8 C422F28C */  lwc1      $f2, %lo(D_8029F28C)($at)
/* 178DBC 8024A4DC 3C0143FA */  lui       $at, 0x43fa
/* 178DC0 8024A4E0 44810000 */  mtc1      $at, $f0
/* 178DC4 8024A4E4 00000000 */  nop
/* 178DC8 8024A4E8 46020001 */  sub.s     $f0, $f0, $f2
/* 178DCC 8024A4EC 3C01802A */  lui       $at, %hi(D_8029CC10)
/* 178DD0 8024A4F0 D422CC10 */  ldc1      $f2, %lo(D_8029CC10)($at)
/* 178DD4 8024A4F4 46000021 */  cvt.d.s   $f0, $f0
/* 178DD8 8024A4F8 46220002 */  mul.d     $f0, $f0, $f2
/* 178DDC 8024A4FC 00000000 */  nop
/* 178DE0 8024A500 3C01403E */  lui       $at, 0x403e
/* 178DE4 8024A504 44811800 */  mtc1      $at, $f3
/* 178DE8 8024A508 44801000 */  mtc1      $zero, $f2
/* 178DEC 8024A50C 00000000 */  nop
/* 178DF0 8024A510 46220000 */  add.d     $f0, $f0, $f2
/* 178DF4 8024A514 46200120 */  cvt.s.d   $f4, $f0
/* 178DF8 8024A518 46002007 */  neg.s     $f0, $f4
/* 178DFC 8024A51C 4600D03C */  c.lt.s    $f26, $f0
/* 178E00 8024A520 00000000 */  nop
/* 178E04 8024A524 45000008 */  bc1f      .L8024A548
/* 178E08 8024A528 00000000 */   nop
/* 178E0C 8024A52C 461A0001 */  sub.s     $f0, $f0, $f26
/* 178E10 8024A530 3C013F00 */  lui       $at, 0x3f00
/* 178E14 8024A534 44811000 */  mtc1      $at, $f2
/* 178E18 8024A538 00000000 */  nop
/* 178E1C 8024A53C 46020002 */  mul.s     $f0, $f0, $f2
/* 178E20 8024A540 00000000 */  nop
/* 178E24 8024A544 4600D680 */  add.s     $f26, $f26, $f0
.L8024A548:
/* 178E28 8024A548 461A203C */  c.lt.s    $f4, $f26
/* 178E2C 8024A54C 00000000 */  nop
/* 178E30 8024A550 45000008 */  bc1f      .L8024A574
/* 178E34 8024A554 00000000 */   nop
/* 178E38 8024A558 461A2001 */  sub.s     $f0, $f4, $f26
/* 178E3C 8024A55C 3C013F00 */  lui       $at, 0x3f00
/* 178E40 8024A560 44811000 */  mtc1      $at, $f2
/* 178E44 8024A564 00000000 */  nop
/* 178E48 8024A568 46020002 */  mul.s     $f0, $f0, $f2
/* 178E4C 8024A56C 00000000 */  nop
/* 178E50 8024A570 4600D680 */  add.s     $f26, $f26, $f0
.L8024A574:
/* 178E54 8024A574 12400055 */  beqz      $s2, .L8024A6CC
/* 178E58 8024A578 00000000 */   nop
/* 178E5C 8024A57C 3C0141C0 */  lui       $at, 0x41c0
/* 178E60 8024A580 44810000 */  mtc1      $at, $f0
/* 178E64 8024A584 00000000 */  nop
/* 178E68 8024A588 4600A501 */  sub.s     $f20, $f20, $f0
/* 178E6C 8024A58C 4600F781 */  sub.s     $f30, $f30, $f0
/* 178E70 8024A590 44800000 */  mtc1      $zero, $f0
/* 178E74 8024A594 00000000 */  nop
/* 178E78 8024A598 4600A03C */  c.lt.s    $f20, $f0
/* 178E7C 8024A59C 00000000 */  nop
/* 178E80 8024A5A0 45030001 */  bc1tl     .L8024A5A8
/* 178E84 8024A5A4 46000506 */   mov.s    $f20, $f0
.L8024A5A8:
/* 178E88 8024A5A8 4600F03C */  c.lt.s    $f30, $f0
/* 178E8C 8024A5AC 00000000 */  nop
/* 178E90 8024A5B0 45030001 */  bc1tl     .L8024A5B8
/* 178E94 8024A5B4 46000786 */   mov.s    $f30, $f0
.L8024A5B8:
/* 178E98 8024A5B8 3C03802A */  lui       $v1, %hi(D_8029F280)
/* 178E9C 8024A5BC 2463F280 */  addiu     $v1, $v1, %lo(D_8029F280)
/* 178EA0 8024A5C0 84620000 */  lh        $v0, ($v1)
/* 178EA4 8024A5C4 461EA080 */  add.s     $f2, $f20, $f30
/* 178EA8 8024A5C8 44820000 */  mtc1      $v0, $f0
/* 178EAC 8024A5CC 00000000 */  nop
/* 178EB0 8024A5D0 46800020 */  cvt.s.w   $f0, $f0
/* 178EB4 8024A5D4 46020000 */  add.s     $f0, $f0, $f2
/* 178EB8 8024A5D8 3C02802A */  lui       $v0, %hi(D_8029F2A4)
/* 178EBC 8024A5DC 8042F2A4 */  lb        $v0, %lo(D_8029F2A4)($v0)
/* 178EC0 8024A5E0 4600038D */  trunc.w.s $f14, $f0
/* 178EC4 8024A5E4 44047000 */  mfc1      $a0, $f14
/* 178EC8 8024A5E8 10400010 */  beqz      $v0, .L8024A62C
/* 178ECC 8024A5EC A4640000 */   sh       $a0, ($v1)
/* 178ED0 8024A5F0 E63A0054 */  swc1      $f26, 0x54($s1)
/* 178ED4 8024A5F4 E63C0058 */  swc1      $f28, 0x58($s1)
/* 178ED8 8024A5F8 C7AE0010 */  lwc1      $f14, 0x10($sp)
/* 178EDC 8024A5FC 3C02802A */  lui       $v0, %hi(D_8029F286)
/* 178EE0 8024A600 8442F286 */  lh        $v0, %lo(D_8029F286)($v0)
/* 178EE4 8024A604 3C03802A */  lui       $v1, %hi(D_8029F282)
/* 178EE8 8024A608 9463F282 */  lhu       $v1, %lo(D_8029F282)($v1)
/* 178EEC 8024A60C A624001E */  sh        $a0, 0x1e($s1)
/* 178EF0 8024A610 3C04802A */  lui       $a0, %hi(D_8029F284)
/* 178EF4 8024A614 9484F284 */  lhu       $a0, %lo(D_8029F284)($a0)
/* 178EF8 8024A618 00021200 */  sll       $v0, $v0, 8
/* 178EFC 8024A61C E62E005C */  swc1      $f14, 0x5c($s1)
/* 178F00 8024A620 A6220026 */  sh        $v0, 0x26($s1)
/* 178F04 8024A624 A6230024 */  sh        $v1, 0x24($s1)
/* 178F08 8024A628 A6240022 */  sh        $a0, 0x22($s1)
.L8024A62C:
/* 178F0C 8024A62C 8622001E */  lh        $v0, 0x1e($s1)
/* 178F10 8024A630 86240026 */  lh        $a0, 0x26($s1)
/* 178F14 8024A634 86230024 */  lh        $v1, 0x24($s1)
/* 178F18 8024A638 44820000 */  mtc1      $v0, $f0
/* 178F1C 8024A63C 00000000 */  nop
/* 178F20 8024A640 46800020 */  cvt.s.w   $f0, $f0
/* 178F24 8024A644 86220022 */  lh        $v0, 0x22($s1)
/* 178F28 8024A648 3C01802A */  lui       $at, %hi(D_8029F28C)
/* 178F2C 8024A64C E420F28C */  swc1      $f0, %lo(D_8029F28C)($at)
/* 178F30 8024A650 44820000 */  mtc1      $v0, $f0
/* 178F34 8024A654 00000000 */  nop
/* 178F38 8024A658 46800020 */  cvt.s.w   $f0, $f0
/* 178F3C 8024A65C 3C01802A */  lui       $at, %hi(D_8029F294)
/* 178F40 8024A660 E420F294 */  swc1      $f0, %lo(D_8029F294)($at)
/* 178F44 8024A664 44830000 */  mtc1      $v1, $f0
/* 178F48 8024A668 00000000 */  nop
/* 178F4C 8024A66C 46800020 */  cvt.s.w   $f0, $f0
/* 178F50 8024A670 3C01802A */  lui       $at, %hi(D_8029F290)
/* 178F54 8024A674 E420F290 */  swc1      $f0, %lo(D_8029F290)($at)
/* 178F58 8024A678 04820001 */  bltzl     $a0, .L8024A680
/* 178F5C 8024A67C 248400FF */   addiu    $a0, $a0, 0xff
.L8024A680:
/* 178F60 8024A680 00041203 */  sra       $v0, $a0, 8
/* 178F64 8024A684 C6220054 */  lwc1      $f2, 0x54($s1)
/* 178F68 8024A688 C6240058 */  lwc1      $f4, 0x58($s1)
/* 178F6C 8024A68C C626005C */  lwc1      $f6, 0x5c($s1)
/* 178F70 8024A690 3C03802A */  lui       $v1, %hi(D_8029F29E)
/* 178F74 8024A694 9463F29E */  lhu       $v1, %lo(D_8029F29E)($v1)
/* 178F78 8024A698 44820000 */  mtc1      $v0, $f0
/* 178F7C 8024A69C 00000000 */  nop
/* 178F80 8024A6A0 46800020 */  cvt.s.w   $f0, $f0
/* 178F84 8024A6A4 3C01802A */  lui       $at, %hi(D_8029F298)
/* 178F88 8024A6A8 E420F298 */  swc1      $f0, %lo(D_8029F298)($at)
/* 178F8C 8024A6AC 3C01802A */  lui       $at, %hi(D_8029F2A8)
/* 178F90 8024A6B0 E422F2A8 */  swc1      $f2, %lo(D_8029F2A8)($at)
/* 178F94 8024A6B4 3C01802A */  lui       $at, %hi(D_8029F2AC)
/* 178F98 8024A6B8 E424F2AC */  swc1      $f4, %lo(D_8029F2AC)($at)
/* 178F9C 8024A6BC 3C01802A */  lui       $at, %hi(D_8029F2B0)
/* 178FA0 8024A6C0 E426F2B0 */  swc1      $f6, %lo(D_8029F2B0)($at)
/* 178FA4 8024A6C4 3C01802A */  lui       $at, %hi(D_8029F2A0)
/* 178FA8 8024A6C8 A423F2A0 */  sh        $v1, %lo(D_8029F2A0)($at)
.L8024A6CC:
/* 178FAC 8024A6CC 3C02802A */  lui       $v0, %hi(D_8029F2A5)
/* 178FB0 8024A6D0 8042F2A5 */  lb        $v0, %lo(D_8029F2A5)($v0)
/* 178FB4 8024A6D4 14400027 */  bnez      $v0, .L8024A774
/* 178FB8 8024A6D8 00000000 */   nop
/* 178FBC 8024A6DC 3C02802A */  lui       $v0, %hi(D_8029F29E)
/* 178FC0 8024A6E0 8442F29E */  lh        $v0, %lo(D_8029F29E)($v0)
/* 178FC4 8024A6E4 3C03802A */  lui       $v1, %hi(D_8029F2A0)
/* 178FC8 8024A6E8 8463F2A0 */  lh        $v1, %lo(D_8029F2A0)($v1)
/* 178FCC 8024A6EC 3C013F80 */  lui       $at, 0x3f80
/* 178FD0 8024A6F0 4481C000 */  mtc1      $at, $f24
/* 178FD4 8024A6F4 44822000 */  mtc1      $v0, $f4
/* 178FD8 8024A6F8 00000000 */  nop
/* 178FDC 8024A6FC 46802120 */  cvt.s.w   $f4, $f4
/* 178FE0 8024A700 44830000 */  mtc1      $v1, $f0
/* 178FE4 8024A704 00000000 */  nop
/* 178FE8 8024A708 46800020 */  cvt.s.w   $f0, $f0
/* 178FEC 8024A70C 46002103 */  div.s     $f4, $f4, $f0
/* 178FF0 8024A710 4604C301 */  sub.s     $f12, $f24, $f4
/* 178FF4 8024A714 3C014049 */  lui       $at, 0x4049
/* 178FF8 8024A718 34210FD0 */  ori       $at, $at, 0xfd0
/* 178FFC 8024A71C 4481B000 */  mtc1      $at, $f22
/* 179000 8024A720 00000000 */  nop
/* 179004 8024A724 46166302 */  mul.s     $f12, $f12, $f22
/* 179008 8024A728 00000000 */  nop
/* 17900C 8024A72C 3C013F00 */  lui       $at, 0x3f00
/* 179010 8024A730 4481A000 */  mtc1      $at, $f20
/* 179014 8024A734 00000000 */  nop
/* 179018 8024A738 46146302 */  mul.s     $f12, $f12, $f20
/* 17901C 8024A73C 0C00A85B */  jal       sin_rad
/* 179020 8024A740 00000000 */   nop
/* 179024 8024A744 46160002 */  mul.s     $f0, $f0, $f22
/* 179028 8024A748 00000000 */  nop
/* 17902C 8024A74C 46140302 */  mul.s     $f12, $f0, $f20
/* 179030 8024A750 0C00A85B */  jal       sin_rad
/* 179034 8024A754 00000000 */   nop
/* 179038 8024A758 46160002 */  mul.s     $f0, $f0, $f22
/* 17903C 8024A75C 00000000 */  nop
/* 179040 8024A760 46140302 */  mul.s     $f12, $f0, $f20
/* 179044 8024A764 0C00A85B */  jal       sin_rad
/* 179048 8024A768 00000000 */   nop
/* 17904C 8024A76C 080929E8 */  j         .L8024A7A0
/* 179050 8024A770 4600C101 */   sub.s    $f4, $f24, $f0
.L8024A774:
/* 179054 8024A774 3C02802A */  lui       $v0, %hi(D_8029F29E)
/* 179058 8024A778 8442F29E */  lh        $v0, %lo(D_8029F29E)($v0)
/* 17905C 8024A77C 3C03802A */  lui       $v1, %hi(D_8029F2A0)
/* 179060 8024A780 8463F2A0 */  lh        $v1, %lo(D_8029F2A0)($v1)
/* 179064 8024A784 44822000 */  mtc1      $v0, $f4
/* 179068 8024A788 00000000 */  nop
/* 17906C 8024A78C 46802120 */  cvt.s.w   $f4, $f4
/* 179070 8024A790 44830000 */  mtc1      $v1, $f0
/* 179074 8024A794 00000000 */  nop
/* 179078 8024A798 46800020 */  cvt.s.w   $f0, $f0
/* 17907C 8024A79C 46002103 */  div.s     $f4, $f4, $f0
.L8024A7A0:
/* 179080 8024A7A0 3C01802A */  lui       $at, %hi(D_8029F2A8)
/* 179084 8024A7A4 C434F2A8 */  lwc1      $f20, %lo(D_8029F2A8)($at)
/* 179088 8024A7A8 4604A502 */  mul.s     $f20, $f20, $f4
/* 17908C 8024A7AC 00000000 */  nop
/* 179090 8024A7B0 3C01802A */  lui       $at, %hi(D_8029F2AC)
/* 179094 8024A7B4 C432F2AC */  lwc1      $f18, %lo(D_8029F2AC)($at)
/* 179098 8024A7B8 46049482 */  mul.s     $f18, $f18, $f4
/* 17909C 8024A7BC 00000000 */  nop
/* 1790A0 8024A7C0 3C01802A */  lui       $at, %hi(D_8029F2B0)
/* 1790A4 8024A7C4 C430F2B0 */  lwc1      $f16, %lo(D_8029F2B0)($at)
/* 1790A8 8024A7C8 46048402 */  mul.s     $f16, $f16, $f4
/* 1790AC 8024A7CC 00000000 */  nop
/* 1790B0 8024A7D0 3C01802A */  lui       $at, %hi(D_8029F298)
/* 1790B4 8024A7D4 C426F298 */  lwc1      $f6, %lo(D_8029F298)($at)
/* 1790B8 8024A7D8 46043182 */  mul.s     $f6, $f6, $f4
/* 1790BC 8024A7DC 00000000 */  nop
/* 1790C0 8024A7E0 3C01802A */  lui       $at, %hi(D_8029F28C)
/* 1790C4 8024A7E4 C42CF28C */  lwc1      $f12, %lo(D_8029F28C)($at)
/* 1790C8 8024A7E8 46046302 */  mul.s     $f12, $f12, $f4
/* 1790CC 8024A7EC 00000000 */  nop
/* 1790D0 8024A7F0 3C01802A */  lui       $at, %hi(D_8029F290)
/* 1790D4 8024A7F4 C428F290 */  lwc1      $f8, %lo(D_8029F290)($at)
/* 1790D8 8024A7F8 46044202 */  mul.s     $f8, $f8, $f4
/* 1790DC 8024A7FC 00000000 */  nop
/* 1790E0 8024A800 3C013F80 */  lui       $at, 0x3f80
/* 1790E4 8024A804 44811000 */  mtc1      $at, $f2
/* 1790E8 8024A808 00000000 */  nop
/* 1790EC 8024A80C 46041081 */  sub.s     $f2, $f2, $f4
/* 1790F0 8024A810 4602D682 */  mul.s     $f26, $f26, $f2
/* 1790F4 8024A814 00000000 */  nop
/* 1790F8 8024A818 4602E602 */  mul.s     $f24, $f28, $f2
/* 1790FC 8024A81C 00000000 */  nop
/* 179100 8024A820 3C02802A */  lui       $v0, %hi(D_8029F286)
/* 179104 8024A824 8442F286 */  lh        $v0, %lo(D_8029F286)($v0)
/* 179108 8024A828 44820000 */  mtc1      $v0, $f0
/* 17910C 8024A82C 00000000 */  nop
/* 179110 8024A830 46800020 */  cvt.s.w   $f0, $f0
/* 179114 8024A834 46020002 */  mul.s     $f0, $f0, $f2
/* 179118 8024A838 00000000 */  nop
/* 17911C 8024A83C C7AE0010 */  lwc1      $f14, 0x10($sp)
/* 179120 8024A840 46027582 */  mul.s     $f22, $f14, $f2
/* 179124 8024A844 00000000 */  nop
/* 179128 8024A848 3C02802A */  lui       $v0, %hi(D_8029F280)
/* 17912C 8024A84C 8442F280 */  lh        $v0, %lo(D_8029F280)($v0)
/* 179130 8024A850 44827000 */  mtc1      $v0, $f14
/* 179134 8024A854 00000000 */  nop
/* 179138 8024A858 468073A0 */  cvt.s.w   $f14, $f14
/* 17913C 8024A85C 46027382 */  mul.s     $f14, $f14, $f2
/* 179140 8024A860 00000000 */  nop
/* 179144 8024A864 3C02802A */  lui       $v0, %hi(D_8029F282)
/* 179148 8024A868 8442F282 */  lh        $v0, %lo(D_8029F282)($v0)
/* 17914C 8024A86C 44825000 */  mtc1      $v0, $f10
/* 179150 8024A870 00000000 */  nop
/* 179154 8024A874 468052A0 */  cvt.s.w   $f10, $f10
/* 179158 8024A878 46025282 */  mul.s     $f10, $f10, $f2
/* 17915C 8024A87C 00000000 */  nop
/* 179160 8024A880 46003180 */  add.s     $f6, $f6, $f0
/* 179164 8024A884 3C014380 */  lui       $at, 0x4380
/* 179168 8024A888 44810000 */  mtc1      $at, $f0
/* 17916C 8024A88C 00000000 */  nop
/* 179170 8024A890 46003182 */  mul.s     $f6, $f6, $f0
/* 179174 8024A894 00000000 */  nop
/* 179178 8024A898 3C01802A */  lui       $at, %hi(D_8029F294)
/* 17917C 8024A89C C420F294 */  lwc1      $f0, %lo(D_8029F294)($at)
/* 179180 8024A8A0 46040002 */  mul.s     $f0, $f0, $f4
/* 179184 8024A8A4 00000000 */  nop
/* 179188 8024A8A8 461AA500 */  add.s     $f20, $f20, $f26
/* 17918C 8024A8AC 46189480 */  add.s     $f18, $f18, $f24
/* 179190 8024A8B0 46168400 */  add.s     $f16, $f16, $f22
/* 179194 8024A8B4 3C02802A */  lui       $v0, %hi(D_8029F284)
/* 179198 8024A8B8 8442F284 */  lh        $v0, %lo(D_8029F284)($v0)
/* 17919C 8024A8BC 460A4200 */  add.s     $f8, $f8, $f10
/* 1791A0 8024A8C0 E7AE0018 */  swc1      $f14, 0x18($sp)
/* 1791A4 8024A8C4 E6340054 */  swc1      $f20, 0x54($s1)
/* 1791A8 8024A8C8 460E6300 */  add.s     $f12, $f12, $f14
/* 1791AC 8024A8CC 3C04802A */  lui       $a0, %hi(D_8029F29E)
/* 1791B0 8024A8D0 2484F29E */  addiu     $a0, $a0, %lo(D_8029F29E)
/* 1791B4 8024A8D4 44822000 */  mtc1      $v0, $f4
/* 1791B8 8024A8D8 00000000 */  nop
/* 1791BC 8024A8DC 46802120 */  cvt.s.w   $f4, $f4
/* 1791C0 8024A8E0 46022102 */  mul.s     $f4, $f4, $f2
/* 1791C4 8024A8E4 00000000 */  nop
/* 1791C8 8024A8E8 E6320058 */  swc1      $f18, 0x58($s1)
/* 1791CC 8024A8EC E630005C */  swc1      $f16, 0x5c($s1)
/* 1791D0 8024A8F0 4600638D */  trunc.w.s $f14, $f12
/* 1791D4 8024A8F4 44027000 */  mfc1      $v0, $f14
/* 1791D8 8024A8F8 00000000 */  nop
/* 1791DC 8024A8FC A622001E */  sh        $v0, 0x1e($s1)
/* 1791E0 8024A900 46040000 */  add.s     $f0, $f0, $f4
/* 1791E4 8024A904 4600438D */  trunc.w.s $f14, $f8
/* 1791E8 8024A908 44027000 */  mfc1      $v0, $f14
/* 1791EC 8024A90C 00000000 */  nop
/* 1791F0 8024A910 A6220024 */  sh        $v0, 0x24($s1)
/* 1791F4 8024A914 4600038D */  trunc.w.s $f14, $f0
/* 1791F8 8024A918 44027000 */  mfc1      $v0, $f14
/* 1791FC 8024A91C 00000000 */  nop
/* 179200 8024A920 A6220022 */  sh        $v0, 0x22($s1)
/* 179204 8024A924 4600338D */  trunc.w.s $f14, $f6
/* 179208 8024A928 44027000 */  mfc1      $v0, $f14
/* 17920C 8024A92C 00000000 */  nop
/* 179210 8024A930 A6220026 */  sh        $v0, 0x26($s1)
/* 179214 8024A934 84820000 */  lh        $v0, ($a0)
/* 179218 8024A938 94830000 */  lhu       $v1, ($a0)
/* 17921C 8024A93C 14400006 */  bnez      $v0, .L8024A958
/* 179220 8024A940 2462FFFF */   addiu    $v0, $v1, -1
/* 179224 8024A944 24020001 */  addiu     $v0, $zero, 1
/* 179228 8024A948 3C01802A */  lui       $at, %hi(D_8029F29C)
/* 17922C 8024A94C A022F29C */  sb        $v0, %lo(D_8029F29C)($at)
/* 179230 8024A950 08092A58 */  j         .L8024A960
/* 179234 8024A954 0000102D */   daddu    $v0, $zero, $zero
.L8024A958:
/* 179238 8024A958 A4820000 */  sh        $v0, ($a0)
/* 17923C 8024A95C 0000102D */  daddu     $v0, $zero, $zero
.L8024A960:
/* 179240 8024A960 8FBF002C */  lw        $ra, 0x2c($sp)
/* 179244 8024A964 8FB20028 */  lw        $s2, 0x28($sp)
/* 179248 8024A968 8FB10024 */  lw        $s1, 0x24($sp)
/* 17924C 8024A96C 8FB00020 */  lw        $s0, 0x20($sp)
/* 179250 8024A970 D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 179254 8024A974 D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 179258 8024A978 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 17925C 8024A97C D7B80040 */  ldc1      $f24, 0x40($sp)
/* 179260 8024A980 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 179264 8024A984 D7B40030 */  ldc1      $f20, 0x30($sp)
/* 179268 8024A988 03E00008 */  jr        $ra
/* 17926C 8024A98C 27BD0060 */   addiu    $sp, $sp, 0x60