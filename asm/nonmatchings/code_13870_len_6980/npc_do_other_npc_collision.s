.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel npc_do_other_npc_collision
/* 1440C 8003900C 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 14410 80039010 AFB1001C */  sw        $s1, 0x1c($sp)
/* 14414 80039014 0080882D */  daddu     $s1, $a0, $zero
/* 14418 80039018 AFBF0028 */  sw        $ra, 0x28($sp)
/* 1441C 8003901C AFB30024 */  sw        $s3, 0x24($sp)
/* 14420 80039020 AFB20020 */  sw        $s2, 0x20($sp)
/* 14424 80039024 AFB00018 */  sw        $s0, 0x18($sp)
/* 14428 80039028 F7BE0058 */  sdc1      $f30, 0x58($sp)
/* 1442C 8003902C F7BC0050 */  sdc1      $f28, 0x50($sp)
/* 14430 80039030 F7BA0048 */  sdc1      $f26, 0x48($sp)
/* 14434 80039034 F7B80040 */  sdc1      $f24, 0x40($sp)
/* 14438 80039038 F7B60038 */  sdc1      $f22, 0x38($sp)
/* 1443C 8003903C F7B40030 */  sdc1      $f20, 0x30($sp)
/* 14440 80039040 8E230000 */  lw        $v1, ($s1)
/* 14444 80039044 30620100 */  andi      $v0, $v1, 0x100
/* 14448 80039048 14400096 */  bnez      $v0, .L800392A4
/* 1444C 8003904C 3C02FDFF */   lui      $v0, 0xfdff
/* 14450 80039050 3442FFFF */  ori       $v0, $v0, 0xffff
/* 14454 80039054 0000902D */  daddu     $s2, $zero, $zero
/* 14458 80039058 3C130400 */  lui       $s3, 0x400
/* 1445C 8003905C C63E0038 */  lwc1      $f30, 0x38($s1)
/* 14460 80039060 C626003C */  lwc1      $f6, 0x3c($s1)
/* 14464 80039064 3C013F00 */  lui       $at, 0x3f00
/* 14468 80039068 44811000 */  mtc1      $at, $f2
/* 1446C 8003906C 00621024 */  and       $v0, $v1, $v0
/* 14470 80039070 E7A60010 */  swc1      $f6, 0x10($sp)
/* 14474 80039074 AE220000 */  sw        $v0, ($s1)
/* 14478 80039078 862200A6 */  lh        $v0, 0xa6($s1)
/* 1447C 8003907C C63C0040 */  lwc1      $f28, 0x40($s1)
/* 14480 80039080 44820000 */  mtc1      $v0, $f0
/* 14484 80039084 00000000 */  nop       
/* 14488 80039088 46800020 */  cvt.s.w   $f0, $f0
/* 1448C 8003908C 46020002 */  mul.s     $f0, $f0, $f2
/* 14490 80039090 00000000 */  nop       
/* 14494 80039094 E7A00014 */  swc1      $f0, 0x14($sp)
.L80039098:
/* 14498 80039098 0C00E2B7 */  jal       get_npc_by_index
/* 1449C 8003909C 0240202D */   daddu    $a0, $s2, $zero
/* 144A0 800390A0 0040802D */  daddu     $s0, $v0, $zero
/* 144A4 800390A4 5200007A */  beql      $s0, $zero, .L80039290
/* 144A8 800390A8 26520001 */   addiu    $s2, $s2, 1
/* 144AC 800390AC 52300078 */  beql      $s1, $s0, .L80039290
/* 144B0 800390B0 26520001 */   addiu    $s2, $s2, 1
/* 144B4 800390B4 8E030000 */  lw        $v1, ($s0)
/* 144B8 800390B8 50600075 */  beql      $v1, $zero, .L80039290
/* 144BC 800390BC 26520001 */   addiu    $s2, $s2, 1
/* 144C0 800390C0 3C028000 */  lui       $v0, 0x8000
/* 144C4 800390C4 34420100 */  ori       $v0, $v0, 0x100
/* 144C8 800390C8 00621024 */  and       $v0, $v1, $v0
/* 144CC 800390CC 54400070 */  bnel      $v0, $zero, .L80039290
/* 144D0 800390D0 26520001 */   addiu    $s2, $s2, 1
/* 144D4 800390D4 860200A8 */  lh        $v0, 0xa8($s0)
/* 144D8 800390D8 C602003C */  lwc1      $f2, 0x3c($s0)
/* 144DC 800390DC 44820000 */  mtc1      $v0, $f0
/* 144E0 800390E0 00000000 */  nop       
/* 144E4 800390E4 46800020 */  cvt.s.w   $f0, $f0
/* 144E8 800390E8 46001000 */  add.s     $f0, $f2, $f0
/* 144EC 800390EC C7A60010 */  lwc1      $f6, 0x10($sp)
/* 144F0 800390F0 4606003C */  c.lt.s    $f0, $f6
/* 144F4 800390F4 00000000 */  nop       
/* 144F8 800390F8 45030065 */  bc1tl     .L80039290
/* 144FC 800390FC 26520001 */   addiu    $s2, $s2, 1
/* 14500 80039100 862200A8 */  lh        $v0, 0xa8($s1)
/* 14504 80039104 44820000 */  mtc1      $v0, $f0
/* 14508 80039108 00000000 */  nop       
/* 1450C 8003910C 46800020 */  cvt.s.w   $f0, $f0
/* 14510 80039110 46003000 */  add.s     $f0, $f6, $f0
/* 14514 80039114 4602003C */  c.lt.s    $f0, $f2
/* 14518 80039118 00000000 */  nop       
/* 1451C 8003911C 4503005C */  bc1tl     .L80039290
/* 14520 80039120 26520001 */   addiu    $s2, $s2, 1
/* 14524 80039124 C6140038 */  lwc1      $f20, 0x38($s0)
/* 14528 80039128 461EA581 */  sub.s     $f22, $f20, $f30
/* 1452C 8003912C 4616B082 */  mul.s     $f2, $f22, $f22
/* 14530 80039130 00000000 */  nop       
/* 14534 80039134 C61A0040 */  lwc1      $f26, 0x40($s0)
/* 14538 80039138 461CD101 */  sub.s     $f4, $f26, $f28
/* 1453C 8003913C 46042002 */  mul.s     $f0, $f4, $f4
/* 14540 80039140 00000000 */  nop       
/* 14544 80039144 860200A6 */  lh        $v0, 0xa6($s0)
/* 14548 80039148 46001300 */  add.s     $f12, $f2, $f0
/* 1454C 8003914C 3C013F00 */  lui       $at, 0x3f00
/* 14550 80039150 44811000 */  mtc1      $at, $f2
/* 14554 80039154 44820000 */  mtc1      $v0, $f0
/* 14558 80039158 00000000 */  nop       
/* 1455C 8003915C 46800020 */  cvt.s.w   $f0, $f0
/* 14560 80039160 46020582 */  mul.s     $f22, $f0, $f2
/* 14564 80039164 00000000 */  nop       
/* 14568 80039168 46006104 */  sqrt.s    $f4, $f12
/* 1456C 8003916C 46042032 */  c.eq.s    $f4, $f4
/* 14570 80039170 00000000 */  nop       
/* 14574 80039174 45010004 */  bc1t      .L80039188
/* 14578 80039178 00000000 */   nop      
/* 1457C 8003917C 0C0187BC */  jal       sqrtf
/* 14580 80039180 00000000 */   nop      
/* 14584 80039184 46000106 */  mov.s     $f4, $f0
.L80039188:
/* 14588 80039188 C7A60014 */  lwc1      $f6, 0x14($sp)
/* 1458C 8003918C 46163000 */  add.s     $f0, $f6, $f22
/* 14590 80039190 46002606 */  mov.s     $f24, $f4
/* 14594 80039194 4618003E */  c.le.s    $f0, $f24
/* 14598 80039198 00000000 */  nop       
/* 1459C 8003919C 4503003C */  bc1tl     .L80039290
/* 145A0 800391A0 26520001 */   addiu    $s2, $s2, 1
/* 145A4 800391A4 8E220000 */  lw        $v0, ($s1)
/* 145A8 800391A8 00531024 */  and       $v0, $v0, $s3
/* 145AC 800391AC 10400005 */  beqz      $v0, .L800391C4
/* 145B0 800391B0 0000182D */   daddu    $v1, $zero, $zero
/* 145B4 800391B4 3C028011 */  lui       $v0, %hi(D_8010EBB0)
/* 145B8 800391B8 8042EBB0 */  lb        $v0, %lo(D_8010EBB0)($v0)
/* 145BC 800391BC 0800E479 */  j         .L800391E4
/* 145C0 800391C0 2C430001 */   sltiu    $v1, $v0, 1
.L800391C4:
/* 145C4 800391C4 8E020000 */  lw        $v0, ($s0)
/* 145C8 800391C8 00531024 */  and       $v0, $v0, $s3
/* 145CC 800391CC 50400005 */  beql      $v0, $zero, .L800391E4
/* 145D0 800391D0 24030001 */   addiu    $v1, $zero, 1
/* 145D4 800391D4 3C028011 */  lui       $v0, %hi(D_8010EBB0)
/* 145D8 800391D8 8042EBB0 */  lb        $v0, %lo(D_8010EBB0)($v0)
/* 145DC 800391DC 50400001 */  beql      $v0, $zero, .L800391E4
/* 145E0 800391E0 24030001 */   addiu    $v1, $zero, 1
.L800391E4:
/* 145E4 800391E4 10600025 */  beqz      $v1, .L8003927C
/* 145E8 800391E8 00000000 */   nop      
/* 145EC 800391EC 4600A306 */  mov.s     $f12, $f20
/* 145F0 800391F0 4406F000 */  mfc1      $a2, $f30
/* 145F4 800391F4 4407E000 */  mfc1      $a3, $f28
/* 145F8 800391F8 0C00A720 */  jal       atan2
/* 145FC 800391FC 4600D386 */   mov.s    $f14, $f26
/* 14600 80039200 3C0140C9 */  lui       $at, 0x40c9
/* 14604 80039204 34210FD0 */  ori       $at, $at, 0xfd0
/* 14608 80039208 44811000 */  mtc1      $at, $f2
/* 1460C 8003920C 00000000 */  nop       
/* 14610 80039210 46020502 */  mul.s     $f20, $f0, $f2
/* 14614 80039214 00000000 */  nop       
/* 14618 80039218 C7A60014 */  lwc1      $f6, 0x14($sp)
/* 1461C 8003921C 46163000 */  add.s     $f0, $f6, $f22
/* 14620 80039220 3C0143B4 */  lui       $at, 0x43b4
/* 14624 80039224 44811000 */  mtc1      $at, $f2
/* 14628 80039228 46180601 */  sub.s     $f24, $f0, $f24
/* 1462C 8003922C 4602A503 */  div.s     $f20, $f20, $f2
/* 14630 80039230 0C00A85B */  jal       sin_rad
/* 14634 80039234 4600A306 */   mov.s    $f12, $f20
/* 14638 80039238 4600C582 */  mul.s     $f22, $f24, $f0
/* 1463C 8003923C 00000000 */  nop       
/* 14640 80039240 0C00A874 */  jal       cos_rad
/* 14644 80039244 4600A306 */   mov.s    $f12, $f20
/* 14648 80039248 4600C087 */  neg.s     $f2, $f24
/* 1464C 8003924C 46001102 */  mul.s     $f4, $f2, $f0
/* 14650 80039250 00000000 */  nop       
/* 14654 80039254 3C013DCC */  lui       $at, 0x3dcc
/* 14658 80039258 3421CCCD */  ori       $at, $at, 0xcccd
/* 1465C 8003925C 44813000 */  mtc1      $at, $f6
/* 14660 80039260 00000000 */  nop       
/* 14664 80039264 4606B002 */  mul.s     $f0, $f22, $f6
/* 14668 80039268 00000000 */  nop       
/* 1466C 8003926C 46062082 */  mul.s     $f2, $f4, $f6
/* 14670 80039270 00000000 */  nop       
/* 14674 80039274 4600F780 */  add.s     $f30, $f30, $f0
/* 14678 80039278 4602E700 */  add.s     $f28, $f28, $f2
.L8003927C:
/* 1467C 8003927C 8E220000 */  lw        $v0, ($s1)
/* 14680 80039280 3C030200 */  lui       $v1, 0x200
/* 14684 80039284 00431025 */  or        $v0, $v0, $v1
/* 14688 80039288 AE220000 */  sw        $v0, ($s1)
/* 1468C 8003928C 26520001 */  addiu     $s2, $s2, 1
.L80039290:
/* 14690 80039290 2A420040 */  slti      $v0, $s2, 0x40
/* 14694 80039294 1440FF80 */  bnez      $v0, .L80039098
/* 14698 80039298 00000000 */   nop      
/* 1469C 8003929C E63E0038 */  swc1      $f30, 0x38($s1)
/* 146A0 800392A0 E63C0040 */  swc1      $f28, 0x40($s1)
.L800392A4:
/* 146A4 800392A4 8FBF0028 */  lw        $ra, 0x28($sp)
/* 146A8 800392A8 8FB30024 */  lw        $s3, 0x24($sp)
/* 146AC 800392AC 8FB20020 */  lw        $s2, 0x20($sp)
/* 146B0 800392B0 8FB1001C */  lw        $s1, 0x1c($sp)
/* 146B4 800392B4 8FB00018 */  lw        $s0, 0x18($sp)
/* 146B8 800392B8 D7BE0058 */  ldc1      $f30, 0x58($sp)
/* 146BC 800392BC D7BC0050 */  ldc1      $f28, 0x50($sp)
/* 146C0 800392C0 D7BA0048 */  ldc1      $f26, 0x48($sp)
/* 146C4 800392C4 D7B80040 */  ldc1      $f24, 0x40($sp)
/* 146C8 800392C8 D7B60038 */  ldc1      $f22, 0x38($sp)
/* 146CC 800392CC D7B40030 */  ldc1      $f20, 0x30($sp)
/* 146D0 800392D0 03E00008 */  jr        $ra
/* 146D4 800392D4 27BD0060 */   addiu    $sp, $sp, 0x60
